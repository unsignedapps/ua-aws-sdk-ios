//
//  UAAWSServiceHealthRequest.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAAWSServiceHealthRequest.h"
#import "UAAWSServiceHealthError.h"

@implementation UAAWSServiceHealthRequest

- (NSURL *)UA_EndpointURLForRegion:(UAAWSRegion)region
{
    return [NSURL URLWithString:@"http://status.aws.amazon.com"];
}

- (UAAWSSignatureVersion)UA_SignatureVersion
{
    return UAAWSSignatureNotRequired;
}

- (NSString *)UA_APIVersion
{
    return nil;
}

- (NSString *)UA_RequestPath
{
    return @"/";
}

- (NSString *)UA_RequestHTTPMethod
{
    return @"GET";
}

- (Class)UA_RequestSerialisationClass
{
    return [UAMTLQueryAdapter class];
}

- (Class)UA_ResponseSerialisationClass
{
    return [UAMTLJSONAdapter class];
}

- (Class)UA_ErrorClass
{
    return [UAAWSServiceHealthError class];
}

- (Class)UA_ResponseClass
{
    return Nil;
}

- (BOOL)UA_isRegionFree
{
    return YES;
}

- (BOOL)UA_isReadOnly
{
    // we're a read-only service
    return YES;
}


#pragma mark - Serializing defaults

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    return [NSDictionary dictionary];
}

@end
