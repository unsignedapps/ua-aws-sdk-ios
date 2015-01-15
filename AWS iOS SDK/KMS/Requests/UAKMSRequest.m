//
//  UAKMSRequest.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAKMSRequest.h"
#import "UAKMSError.h"

@implementation UAKMSRequest

- (NSURL *)UA_EndpointURLForRegion:(UAAWSRegion)region
{
    switch (region)
    {
        case UAAWSRegionUSEast1:
            return [NSURL URLWithString:@"https://kms.us-east-1.amazonaws.com"];
            
        case UAAWSRegionUSWest1:
            return [NSURL URLWithString:@"https://kms.us-west-1.amazonaws.com"];
            
        case UAAWSRegionUSWest2:
            return [NSURL URLWithString:@"https://kms.us-west-2.amazonaws.com"];
            
        case UAAWSRegionEUWest1:
            return [NSURL URLWithString:@"https://kms.eu-west-1.amazonaws.com"];

        case UAAWSRegionEUCentral1:
            return [NSURL URLWithString:@"https://kms.eu-central-1.amazonaws.com"];
            
        case UAAWSRegionAPNortheast1:
            return [NSURL URLWithString:@"https://kms.ap-northeast-1.amazonaws.com"];
            
        case UAAWSRegionAPSoutheast1:
            return [NSURL URLWithString:@"https://kms.ap-southeast-1.amazonaws.com"];
            
        case UAAWSRegionAPSoutheast2:
            return [NSURL URLWithString:@"https://kms.ap-southeast-2.amazonaws.com"];
            
        case UAAWSRegionSAEast1:
            return [NSURL URLWithString:@"https://kms.sa-east-1.amazonaws.com"];

        case UAAWSRegionCNNorth1:
            return [NSURL URLWithString:@"https://kms.cn-north-1.amazonaws.com"];

        case UAAWSRegionUSGovWest1:
            return [NSURL URLWithString:@"https://kms.us-gov-west-1.amazonaws.com"];

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
    return @"2014-11-01";
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
    return [UAKMSError class];
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
    // right now the read only template does not support KMS at all. Best we use the elevated keys to avoid user issues
//    return NO;
    return 	[NSStringFromClass([self class]) rangeOfString:@"UAKMSDescribe"].location == 0 ||
		[NSStringFromClass([self class]) rangeOfString:@"UAKMSList"].location == 0 ||
		[NSStringFromClass([self class]) rangeOfString:@"UAKMSGet"].location == 0;
}

#pragma mark - Serializing defaults

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return
    @{
        @"xAmzTarget":          [NSNull null]
    };
}

+ (NSDictionary *)UAHeaderMappingsByPropertyKey
{
    return
    @{
        @"xAmzTarget":          @"x-amz-target"
    };
}

@end

