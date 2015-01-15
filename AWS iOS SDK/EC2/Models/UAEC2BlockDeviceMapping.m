//
//  UAEC2BlockDeviceMapping.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2BlockDeviceMapping.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2EBSBlockDevice.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2BlockDeviceMapping

@synthesize virtualName=_virtualName, deviceName=_deviceName, ebs=_ebs, noDevice=_noDevice;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"virtualName": @"VirtualName",
        @"deviceName": @"DeviceName",
        @"ebs": @"Ebs",
        @"noDevice": @"NoDevice"
    }];
    return [keyPaths copy];
}

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"virtualName": @"ec2:virtualName",
        @"deviceName": @"ec2:deviceName",
        @"ebs": @"ec2:ebs",
        @"noDevice": @"ec2:noDevice"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)ebsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2EBSBlockDevice class]];
}

+ (NSValueTransformer *)noDeviceQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)ebsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2EBSBlockDevice class]];
}

+ (NSValueTransformer *)noDeviceXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop