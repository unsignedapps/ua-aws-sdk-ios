//
//  UASQSRequest.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UASQSRequest.h"
#import "UASQSError.h"

@implementation UASQSRequest

- (NSURL *)UA_EndpointURLForRegion:(UAAWSRegion)region
{
    switch (region)
    {
        case UAAWSRegionUSEast1:
            return [NSURL URLWithString:@"https://sqs.us-east-1.amazonaws.com"];
            
        case UAAWSRegionUSWest1:
            return [NSURL URLWithString:@"https://sqs.us-west-1.amazonaws.com"];
            
        case UAAWSRegionUSWest2:
            return [NSURL URLWithString:@"https://sqs.us-west-2.amazonaws.com"];
            
        case UAAWSRegionEUWest1:
            return [NSURL URLWithString:@"https://sqs.eu-west-1.amazonaws.com"];

        case UAAWSRegionEUCentral1:
            return [NSURL URLWithString:@"https://sqs.eu-central-1.amazonaws.com"];

        case UAAWSRegionAPNortheast1:
            return [NSURL URLWithString:@"https://sqs.ap-northeast-1.amazonaws.com"];
            
        case UAAWSRegionAPSoutheast1:
            return [NSURL URLWithString:@"https://sqs.ap-southeast-1.amazonaws.com"];
            
        case UAAWSRegionAPSoutheast2:
            return [NSURL URLWithString:@"https://sqs.ap-southeast-2.amazonaws.com"];
            
        case UAAWSRegionSAEast1:
            return [NSURL URLWithString:@"https://sqs.sa-east-1.amazonaws.com"];
            
        case UAAWSRegionCNNorth1:
            return [NSURL URLWithString:@"https://sqs.cn-north-1.amazonaws.com"];
            
        case UAAWSRegionUSGovWest1:
            return [NSURL URLWithString:@"https://sqs.us-gov-west-1.amazonaws.com"];
            
        case UAAWSRegionUnknown:
        default:
            return nil;
    }
}

- (UAAWSSignatureVersion)UA_SignatureVersion
{
    return UAAWSSignatureVersion4;
}

- (NSString *)UA_APIVersion
{
    return @"2012-11-05";
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
    return [UASQSError class];
}

- (Class)UA_ResponseClass
{
    return Nil;
}

- (BOOL)UA_isRegionFree
{
    return NO;
}

- (BOOL)UA_isReadOnly
{
    // according to the read-only IAM template, these methods are readonly.
    NSString *klass = NSStringFromClass([self class]);
    return [klass isEqualToString:@"UASQSGetQueueAttributesRequest"] || [klass isEqualToString:@"UASQSListQueuesRequest"] || [klass isEqualToString:@"UASQSReceiveMessageRequest"];
}

#pragma mark - Serializing defaults

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    return [NSDictionary dictionary];
}

@end
