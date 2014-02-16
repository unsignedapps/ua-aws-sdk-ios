//
//  UAASBlockDeviceMapping.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASBlockDeviceMapping.h"
#import "UAASEBSBlockDevice.h"

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
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAASEBSBlockDevice class]];
}

+ (NSValueTransformer *)ebsXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAASEBSBlockDevice class]];
}

+ (NSValueTransformer *)noDeviceXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
