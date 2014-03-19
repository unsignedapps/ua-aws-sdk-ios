//
//  UAASRequest.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAASRequest.h"
#import "UAASError.h"

@implementation UAASRequest

- (NSURL *)UA_EndpointURLForRegion:(UAAWSRegion)region
{
    switch (region)
    {
        case UAAWSRegionUSEast1:
            return [NSURL URLWithString:@"https://autoscaling.us-east-1.amazonaws.com"];
            
        case UAAWSRegionUSWest1:
            return [NSURL URLWithString:@"https://autoscaling.us-west-1.amazonaws.com"];
            
        case UAAWSRegionUSWest2:
            return [NSURL URLWithString:@"https://autoscaling.us-west-2.amazonaws.com"];
            
        case UAAWSRegionEUWest1:
            return [NSURL URLWithString:@"https://autoscaling.eu-west-1.amazonaws.com"];
            
        case UAAWSRegionAPNortheast1:
            return [NSURL URLWithString:@"https://autoscaling.ap-northeast-1.amazonaws.com"];
            
        case UAAWSRegionAPSoutheast1:
            return [NSURL URLWithString:@"https://autoscaling.ap-southeast-1.amazonaws.com"];
            
        case UAAWSRegionAPSoutheast2:
            return [NSURL URLWithString:@"https://autoscaling.ap-southeast-2.amazonaws.com"];
            
        case UAAWSRegionSAEast1:
            return [NSURL URLWithString:@"https://autoscaling.sa-east-1.amazonaws.com"];

        case UAAWSRegionCNNorth1:
            return [NSURL URLWithString:@"https://autoscaling.cn-north-1.amazonaws.com"];

        case UAAWSRegionUSGovWest1:
            return [NSURL URLWithString:@"https://autoscaling.us-gov-west-1.amazonaws.com"];

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
    return @"2011-01-01";
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
    return [UAASError class];
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
    // according to the read-only IAM template, all Describe* methods are read only.
    return [NSStringFromClass([self class]) rangeOfString:@"UAASDescribe"].location == 0;
}

#pragma mark - Serializing defaults

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    return [NSDictionary dictionary];
}

@end
