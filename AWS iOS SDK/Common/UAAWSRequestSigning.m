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
#import "NSString+DSURLEscape.h"
#import "NSString+UAAWSRegions.h"

@interface UAAWSRequestSigning ()

+ (NSString *)version2AuthenticatedRequestBodyForBody:(NSString *)body ofRequest:(UAAWSRequest<UAAWSRequest> *)request withCredentials:(UAAWSCredentials *)credentials;
+ (void)signURLRequestUsingV2:(NSMutableURLRequest *)urlRequest ofRequest:(UAAWSRequest<UAAWSRequest> *)request withCredentials:(UAAWSCredentials *)credentials;

+ (void)signURLRequestUsingV4:(NSMutableURLRequest *)urlRequest ofRequest:(UAAWSRequest<UAAWSRequest> *)request inRegion:(UAAWSRegion)region withCredentials:(UAAWSCredentials *)credentials;

@end

@implementation UAAWSRequestSigning

+ (void)signURLRequest:(NSMutableURLRequest *)urlRequest ofRequest:(UAAWSRequest<UAAWSRequest> *)request inRegion:(UAAWSRegion)region withCredentials:(UAAWSCredentials *)credentials
{
    UAAWSSignatureVersion version = [request UA_SignatureVersion];
    
    switch (version)
    {
        case UAAWSSignatureVersion2:
            return [self signURLRequestUsingV2:urlRequest ofRequest:request withCredentials:credentials];
            
        case UAAWSSignatureVersion4:
            return [self signURLRequestUsingV4:urlRequest ofRequest:request inRegion:region withCredentials:credentials];
            
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

#pragma mark - Version 4 Signatures

+ (void)signURLRequestUsingV4:(NSMutableURLRequest *)urlRequest ofRequest:(UAAWSRequest<UAAWSRequest> *)request inRegion:(UAAWSRegion)region withCredentials:(UAAWSCredentials *)credentials
{
    // Set the X-Amz-Date header
    NSDate *now = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyyMMdd'T'HHmmss'Z'"];
    NSString *xAmzDate = [dateFormatter stringFromDate:now];
    [urlRequest setValue:xAmzDate forHTTPHeaderField:@"X-Amz-Date"];
    
    // Make sure we manually set the host header
    [urlRequest setValue:urlRequest.URL.host forKey:@"Host"];
    
    // make a canonical copy of the headers for signing
    NSDictionary *headers = [UAAWSRequestSigning canonicalHeadersWithHeaders:urlRequest.allHTTPHeaderFields];
    NSString *body = [[NSString alloc] initWithData:urlRequest.HTTPBody encoding:NSUTF8StringEncoding];
    
    // create the canonical request for signing
    NSString *canonicalRequest = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@",
                                  urlRequest.HTTPMethod,
                                  (urlRequest.URL.path ?: @"/"),
                                  (urlRequest.URL.query ?: @""),
                                  [UAAWSRequestSigning canonicalHeaderStringWithHeaders:headers],
                                  [UAAWSRequestSigning signedHeaderStringForCanonicalHeaders:headers],
                                  [[urlRequest.HTTPBody sha256] hexString]];
    
    // Now we have to sign all
    
    // Assemble the Authorization Header
    
    // reuse the date formatter to set this one
    [dateFormatter setDateFormat:@"yyyyMMdd"];

    // Scope
    NSString *scope = [NSString stringWithFormat:@"%@/%@/%@/aws4_request",
                       [dateFormatter stringFromDate:now],
                       [NSString UA_regionStringForRegionValue:region],
                       [urlRequest.URL.host substringToIndex:([urlRequest.URL.host rangeOfString:@"."].location)]];
    
    // The string that gets signed
    NSString *signme = [NSString stringWithFormat:@"AWS4-HMAC-SHA256\n%@\n%@\n%@",
                        xAmzDate,
                        scope,
                        [[[canonicalRequest dataUsingEncoding:NSUTF8StringEncoding] sha256] hexString]];
    
    
}

+ (NSDictionary *)canonicalHeadersWithHeaders:(NSDictionary *)headers
{
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] initWithCapacity:[headers count]];
    NSCharacterSet *whitespaces = [NSCharacterSet whitespaceAndNewlineCharacterSet];

    // create a dictionary by trimming the headers and values appropriately. Also lowercase the header itself
    for (NSString *header in headers)
        [dictionary setObject:[[headers objectForKey:header] stringByTrimmingCharactersInSet:whitespaces]
                       forKey:[[header stringByTrimmingCharactersInSet:whitespaces] lowercaseString]];

    return [dictionary copy];
}

+ (NSString *)canonicalHeaderStringWithHeaders:(NSDictionary *)headers
{
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:0];
    
    for (NSString *header in [[headers allKeys] sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)])
        [array addObject:[NSString stringWithFormat:@"%@:%@", header, [headers objectForKey:header]]];

    return [array componentsJoinedByString:@"\n"];
}
                                  

+ (NSString *)signedHeaderStringForCanonicalHeaders:(NSDictionary *)headers
{
    NSArray *allKeys = [[headers allKeys] sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
    return [allKeys componentsJoinedByString:@";"];
}

@end
