//
//  UADDBRequest.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UADDBRequest.h"
#import "UADDBError.h"

@implementation UADDBRequest

- (NSURL *)UA_EndpointURLForRegion:(UAAWSRegion)region
{
    switch (region)
    {
        case UAAWSRegionUSEast1:
            return [NSURL URLWithString:@"https://dynamodb.us-east-1.amazonaws.com"];
            
        case UAAWSRegionUSWest1:
            return [NSURL URLWithString:@"https://dynamodb.us-west-1.amazonaws.com"];
            
        case UAAWSRegionUSWest2:
            return [NSURL URLWithString:@"https://dynamodb.us-west-2.amazonaws.com"];
            
        case UAAWSRegionEUWest1:
            return [NSURL URLWithString:@"https://dynamodb.eu-west-1.amazonaws.com"];
            
        case UAAWSRegionAPNortheast1:
            return [NSURL URLWithString:@"https://dynamodb.ap-northeast-1.amazonaws.com"];
            
        case UAAWSRegionAPSoutheast1:
            return [NSURL URLWithString:@"https://dynamodb.ap-southeast-1.amazonaws.com"];
            
        case UAAWSRegionAPSoutheast2:
            return [NSURL URLWithString:@"https://dynamodb.ap-southeast-2.amazonaws.com"];
            
        case UAAWSRegionSAEast1:
            return [NSURL URLWithString:@"https://dynamodb.sa-east-1.amazonaws.com"];

        case UAAWSRegionCNNorth1:
            return [NSURL URLWithString:@"https://dynamodb.cn-north-1.amazonaws.com"];

        case UAAWSRegionUSGovWest1:
            return [NSURL URLWithString:@"https://dynamodb.us-gov-west-1.amazonaws.com"];

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
    return [UAMTLJSONAdapter class];
}

- (Class)UA_ResponseSerialisationClass
{
    return [UAMTLJSONAdapter class];
}

- (Class)UA_ErrorClass
{
    return [UADDBError class];
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
    return [NSStringFromClass([self class]) rangeOfString:@"UADDBDescribe"].location == 0;
}

#pragma mark - Serializing defaults

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return [NSDictionary dictionary];
}

@end
