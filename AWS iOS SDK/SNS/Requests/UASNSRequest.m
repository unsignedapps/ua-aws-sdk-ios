//
//  UASNSRequest.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UASNSRequest.h"
#import "UASNSError.h"

@implementation UASNSRequest

- (NSURL *)UA_EndpointURLForRegion:(UAAWSRegion)region
{
    switch (region)
    {
        case UAAWSRegionUSEast1:
            return [NSURL URLWithString:@"https://sns.us-east-1.amazonaws.com"];
            
        case UAAWSRegionUSWest1:
            return [NSURL URLWithString:@"https://sns.us-west-1.amazonaws.com"];
            
        case UAAWSRegionUSWest2:
            return [NSURL URLWithString:@"https://sns.us-west-2.amazonaws.com"];
            
        case UAAWSRegionEUWest1:
            return [NSURL URLWithString:@"https://sns.eu-west-1.amazonaws.com"];
            
        case UAAWSRegionAPNortheast1:
            return [NSURL URLWithString:@"https://sns.ap-northeast-1.amazonaws.com"];
            
        case UAAWSRegionAPSoutheast1:
            return [NSURL URLWithString:@"https://sns.ap-southeast-1.amazonaws.com"];
            
        case UAAWSRegionAPSoutheast2:
            return [NSURL URLWithString:@"https://sns.ap-southeast-2.amazonaws.com"];
            
        case UAAWSRegionSAEast1:
            return [NSURL URLWithString:@"https://sns.sa-east-1.amazonaws.com"];
            
        case UAAWSRegionCNNorth1:
            return [NSURL URLWithString:@"https://sns.cn-north-1.amazonaws.com"];
            
        case UAAWSRegionUSGovWest1:
            return [NSURL URLWithString:@"https://sns.us-gov-west-1.amazonaws.com"];
            
        case UAAWSRegionUnknown:
        default:
            return nil;
    }
}

- (UAAWSSignatureVersion)UA_SignatureVersion
{
    return UAAWSSignatureVersion2;
}

- (NSString *)UA_APIVersion
{
    return @"2010-03-31";
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
    return [MTLQueryAdapter class];
}

- (Class)UA_ResponseSerialisationClass
{
    return [MTLXMLAdapter class];
}

- (Class)UA_ErrorClass
{
    return [UASNSError class];
}

- (Class)UA_ResponseClass
{
    return Nil;
}


#pragma mark - Serializing defaults

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    return [NSDictionary dictionary];
}

@end
