//
//  UAEC2InstanceBlockDeviceMappingSpecification.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2InstanceBlockDeviceMappingSpecification.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2EBSInstanceBlockDeviceSpecification.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2InstanceBlockDeviceMappingSpecification

@synthesize deviceName=_deviceName, ebs=_ebs, virtualName=_virtualName, noDevice=_noDevice;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"deviceName": @"DeviceName",
        @"ebs": @"Ebs",
        @"virtualName": @"VirtualName",
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
        @"deviceName": @"ec2:DeviceName",
        @"ebs": @"ec2:Ebs",
        @"virtualName": @"ec2:VirtualName",
        @"noDevice": @"ec2:NoDevice"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)ebsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2EBSInstanceBlockDeviceSpecification class]];
}

+ (NSValueTransformer *)noDeviceQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)ebsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2EBSInstanceBlockDeviceSpecification class]];
}

+ (NSValueTransformer *)noDeviceXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop