//
//  UAEC2ReservedInstancesConfiguration.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ReservedInstancesConfiguration.h"

@implementation UAEC2ReservedInstancesConfiguration

@synthesize availabilityZone=_availabilityZone, platform=_platform, instanceCount=_instanceCount, instanceType=_instanceType;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"availabilityZone": @"AvailabilityZone",
        @"platform": @"Platform",
        @"instanceCount": @"InstanceCount",
        @"instanceType": @"InstanceType"
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
        @"availabilityZone": @"ec2:AvailabilityZone",
        @"platform": @"ec2:Platform",
        @"instanceCount": @"ec2:InstanceCount",
        @"instanceType": @"ec2:InstanceType"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)instanceCountXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
