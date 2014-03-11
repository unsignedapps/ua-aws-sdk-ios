//
//  UAIAMRequest.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAIAMRequest.h"
#import "UAIAMError.h"

@implementation UAIAMRequest

- (NSURL *)UA_EndpointURLForRegion:(UAAWSRegion)region
{
    // there's only the one global endpoint for IAM
    return [NSURL URLWithString:@"https://iam.amazonaws.com"];
}

- (UAAWSSignatureVersion)UA_SignatureVersion
{
    return UAAWSSignatureVersion4;
}

- (NSString *)UA_APIVersion
{
    return @"2010-05-08";
}

- (NSString *)UA_RequestPath
{
    return @"/";
}

- (NSString *)UA_RequestHTTPMethod
{
    return @"POST";
}

- (Class)UA_RequestSerialisationClass
{
    return [UAMTLQueryAdapter class];
}

- (Class)UA_ResponseSerialisationClass
{
    return [UAMTLXMLAdapter class];
}

- (Class)UA_ErrorClass
{
    return [UAIAMError class];
}

- (Class)UA_ResponseClass
{
    return Nil;
}

- (BOOL)UA_isRegionFree
{
    return YES;
}


#pragma mark - Serializing defaults

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    return [NSDictionary dictionary];
}

@end
