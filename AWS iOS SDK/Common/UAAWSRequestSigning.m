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
#import "NSString+UAStringEncoding.h"
#import "NSURL+UAAWSServiceName.h"

@interface UAAWSRequestSigning ()

+ (NSString *)version2AuthenticatedRequestBodyForBody:(NSString *)body ofRequest:(UAAWSRequest<UAAWSRequest> *)request withCredentials:(UAAWSCredentials *)credentials;
+ (void)signURLRequestUsingV2:(NSMutableURLRequest *)urlRequest ofRequest:(UAAWSRequest<UAAWSRequest> *)request withCredentials:(UAAWSCredentials *)credentials;

+ (void)signURLRequestUsingV4:(NSMutableURLRequest *)urlRequest atDate:(NSDate *)requestDate inRegion:(UAAWSRegion)region withCredentials:(UAAWSCredentials *)credentials;

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
            return [self signURLRequestUsingV4:urlRequest atDate:[NSDate date] inRegion:region withCredentials:credentials];
            
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
        // we compare only the key name
        NSString *key1 = [param1 substringToIndex:[param1 rangeOfString:@"="].location];
        NSString *key2 = [param2 substringToIndex:[param2 rangeOfString:@"="].location];
        return [key1 compare:key2];
            
    }] componentsJoinedByString:@"&"];
    
    // and build our signing content
    NSString *content = [NSString stringWithFormat:@"%@\n%@\n%@\n%@",
                         urlRequest.HTTPMethod,
                         urlRequest.URL.host,
                         urlRequest.URL.path,
                         parameters];
    NSLog(@"Content to sign: %@", content);
    
    NSString *signature = [[[content UA_UTF8Data] UA_hmacSHA256WithKey:credentials.secretKey] base64EncodedStringWithOptions:kNilOptions];
    
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

+ (void)signURLRequestUsingV4:(NSMutableURLRequest *)urlRequest atDate:(NSDate *)requestDate inRegion:(UAAWSRegion)region withCredentials:(UAAWSCredentials *)credentials
{
    // Set the X-Amz-Date header
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyyMMdd'T'HHmmss'Z'"];
    [dateFormatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"]];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithName:@"UTC"]];

    NSString *xAmzDate = [dateFormatter stringFromDate:requestDate];
    [urlRequest setValue:xAmzDate forHTTPHeaderField:@"X-Amz-Date"];
    
    // Make sure we manually set the host header
    [urlRequest setValue:urlRequest.URL.host forHTTPHeaderField:@"Host"];
    
    // make a canonical copy of the headers for signing
    NSDictionary *headers = [UAAWSRequestSigning canonicalHeadersWithHeaders:urlRequest.allHTTPHeaderFields];
    
    // create the canonical request for signing
    NSString *canonicalRequest = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@",
                                  urlRequest.HTTPMethod,
                                  (urlRequest.URL.path ?: @"/"),
                                  (urlRequest.URL.query ?: @""),
                                  [UAAWSRequestSigning canonicalHeaderStringWithHeaders:headers],
                                  [UAAWSRequestSigning signedHeaderStringForCanonicalHeaders:headers],
                                  [[urlRequest.HTTPBody UA_sha256] UA_hexString]];
    
    // Now we have to sign all
    
    // Assemble the Authorization Header
    
    // reuse the date formatter to set this one
    [dateFormatter setDateFormat:@"yyyyMMdd"];
    NSString *dateString = [dateFormatter stringFromDate:requestDate];

    // Scope
    NSString *scope = [NSString stringWithFormat:@"%@/%@/%@/aws4_request",
                       dateString,
                       [NSString UA_regionStringForRegionValue:region],
                       [urlRequest.URL UA_AWSServiceName]];
    
    // The string that gets signed
    NSString *signme = [NSString stringWithFormat:@"AWS4-HMAC-SHA256\n%@\n%@\n%@",
                        xAmzDate,
                        scope,
                        [[[canonicalRequest UA_UTF8Data] UA_sha256] UA_hexString]];
    
    // We run the key through several HMAC's before arriving at the final one
    NSData *key = [[@"AWS4" stringByAppendingString:credentials.secretKey] UA_UTF8Data];
    key = [[dateString UA_UTF8Data] UA_hmacSHA256WithDataKey:key];
    key = [[[NSString UA_regionStringForRegionValue:region] UA_UTF8Data] UA_hmacSHA256WithDataKey:key];
    key = [[[urlRequest.URL UA_AWSServiceName] UA_UTF8Data] UA_hmacSHA256WithDataKey:key];
    key = [[@"aws4_request" UA_UTF8Data] UA_hmacSHA256WithDataKey:key];
    
    // now that we have the derived key, finally sign the payload string
    NSData *signature = [[signme UA_UTF8Data] UA_hmacSHA256WithDataKey:key];
    
    // Finally, the Authorization header!
    NSString *authorization = [NSString stringWithFormat:@"AWS4-HMAC-SHA256 Credential=%@/%@, SignedHeaders=%@, Signature=%@",
                               credentials.accessKey,
                               scope,
                               [UAAWSRequestSigning signedHeaderStringForCanonicalHeaders:headers],
                               [signature UA_hexString]];
    [urlRequest setValue:authorization forHTTPHeaderField:@"Authorization"];
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

    return [[array componentsJoinedByString:@"\n"] stringByAppendingString:@"\n"];
}
                                  

+ (NSString *)signedHeaderStringForCanonicalHeaders:(NSDictionary *)headers
{
    NSArray *allKeys = [[headers allKeys] sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
    return [allKeys componentsJoinedByString:@";"];
}

@end
