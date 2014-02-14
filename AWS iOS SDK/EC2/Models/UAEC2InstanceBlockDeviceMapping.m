//
//  UAEC2InstanceBlockDeviceMapping.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2InstanceBlockDeviceMapping.h"
#import "UAEC2EBSInstanceBlockDevice.h"

@implementation UAEC2InstanceBlockDeviceMapping

@synthesize deviceName=_deviceName, ebs=_ebs;

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
        @"deviceName": @"ec2:deviceName",
        @"ebs": @"ec2:ebs"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)ebsQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2EBSInstanceBlockDevice class]];
}

+ (NSValueTransformer *)ebsXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2EBSInstanceBlockDevice class]];
}

@end
