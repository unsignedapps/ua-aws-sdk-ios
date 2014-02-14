//
//  UAEC2BlockDeviceMapping.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2BlockDeviceMapping.h"
#import "UAEC2EBSBlockDevice.h"

@implementation UAEC2BlockDeviceMapping

@synthesize virtualName=_virtualName, deviceName=_deviceName, ebs=_ebs, noDevice=_noDevice;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"virtualName": @"virtualName",
        @"deviceName": @"deviceName",
        @"ebs": @"ebs",
        @"noDevice": @"noDevice"
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
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2EBSBlockDevice class]];
}

+ (NSValueTransformer *)ebsXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2EBSBlockDevice class]];
}

@end
