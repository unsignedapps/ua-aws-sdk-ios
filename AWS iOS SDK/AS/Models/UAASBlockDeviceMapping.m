//
//  UAASBlockDeviceMapping.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASBlockDeviceMapping.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASEBSBlockDevice.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASBlockDeviceMapping

@synthesize virtualName=_virtualName, deviceName=_deviceName, ebs=_ebs, noDevice=_noDevice;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASModel queryStringKeyPathsByPropertyKey] mutableCopy];

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
    NSMutableDictionary *keyPaths = [[UAASModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"virtualName": @"AutoScaling:VirtualName",
        @"deviceName": @"AutoScaling:DeviceName",
        @"ebs": @"AutoScaling:Ebs",
        @"noDevice": @"AutoScaling:NoDevice"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)ebsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAASEBSBlockDevice class]];
}

+ (NSValueTransformer *)ebsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAASEBSBlockDevice class]];
}

+ (NSValueTransformer *)noDeviceXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop