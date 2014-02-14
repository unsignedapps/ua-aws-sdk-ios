//
//  UAAWSRequestSigning.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 3/02/2014.
//
//

#import "UAAWSRequestSigning.h"
#import "UAAWSRequest.h"
#import "UAAWSCredentials.h"
#import "NSData+UAHMAC.h"
#import "NSString+UAURLEscape.h"

@interface UAAWSRequestSigning ()

+ (NSString *)version2AuthenticatedRequestBodyForBody:(NSString *)body ofRequest:(UAAWSRequest<UAAWSRequest> *)request withCredentials:(UAAWSCredentials *)credentials;
+ (void)signURLRequestUsingV2:(NSMutableURLRequest *)urlRequest ofRequest:(UAAWSRequest<UAAWSRequest> *)request withCredentials:(UAAWSCredentials *)credentials;

@end

@implementation UAAWSRequestSigning

+ (void)signURLRequest:(NSMutableURLRequest *)urlRequest ofRequest:(UAAWSRequest<UAAWSRequest> *)request withCredentials:(UAAWSCredentials *)credentials
{
    UAAWSSignatureVersion version = [request UA_SignatureVersion];
    
    switch (version)
    {
        case UAAWSSignatureVersion2:
            return [self signURLRequestUsingV2:urlRequest ofRequest:request withCredentials:credentials];
            
        case UAAWSSignatureNotRequired:
            return;
            
        case UAAWSSignatureVersionUnknown:
        default:
            NSAssert(NO, @"Unknown signature version for signing request %@. You must conform to <UAAWSRequest>.", request);
    }
}

#pragma mark - Version 2 Signatures

+ (void)signURLRequestUsingV2:(NSMutableURLRequest *)urlRequest ofRequest:(UAAWSRequest<UAAWSRequest> *)request withCredentials:(UAAWSCredentials *)credentials
{
    // Step 1 - We need to append the signature parameters to the body
    NSString *body = [[NSString alloc] initWithData:urlRequest.HTTPBody encoding:NSUTF8StringEncoding];
    body = [self version2AuthenticatedRequestBodyForBody:body ofRequest:request withCredentials:credentials];
    
    // now lexicographically sort those and re-combine
    NSArray *parts = [body componentsSeparatedByString:@"&"];
    NSString *parameters = [[parts sortedArrayUsingComparator:^NSComparisonResult(NSString *param1, NSString *param2)
    {
        return [param1 compare:param2];

    }] componentsJoinedByString:@"&"];
    
    // and build our signing content
    NSString *content = [NSString stringWithFormat:@"%@\n%@\n%@\n%@",
                         urlRequest.HTTPMethod,
                         urlRequest.URL.host,
                         urlRequest.URL.path,
                         parameters];
    
    NSString *signature = [[[content dataUsingEncoding:NSUTF8StringEncoding] hmacSHA256WithKey:credentials.secretKey] base64EncodedStringWithOptions:kNilOptions];
    
    // now we mix-in the signature value to the other parameters, and set it as the body again
    NSString *signedParameters = [parameters stringByAppendingFormat:@"&Signature=%@", [signature stringByURLEscaping]];
    [urlRequest setHTTPBody:[signedParameters dataUsingEncoding:NSUTF8StringEncoding]];
}

+ (NSString *)version2AuthenticatedRequestBodyForBody:(NSString *)body ofRequest:(UAAWSRequest<UAAWSRequest> *)request withCredentials:(UAAWSCredentials *)credentials
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    dateFormatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ss";
    dateFormatter.timeZone = [NSTimeZone timeZoneWithName:@"UTC"];
    
    // this is pretty easy, we just mix in a few bits and pieces
    return [body stringByAppendingFormat:@"&AWSAccessKeyId=%@&SignatureMethod=HmacSHA256&SignatureVersion=2&Timestamp=%@",
            credentials.accessKey,
            [[dateFormatter stringFromDate:[NSDate date]] stringByURLEscaping]];
}

@end
