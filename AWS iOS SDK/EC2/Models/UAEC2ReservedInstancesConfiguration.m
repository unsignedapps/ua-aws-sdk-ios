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

- (void)setAvailabilityZone:(NSString *)availabilityZone
{
	_availabilityZone = availabilityZone;
	
	if (![self.UA_dirtyProperties containsObject:@"availabilityZone"])
		[self.UA_dirtyProperties addObject:@"availabilityZone"];
}

- (void)setPlatform:(NSString *)platform
{
	_platform = platform;
	
	if (![self.UA_dirtyProperties containsObject:@"platform"])
		[self.UA_dirtyProperties addObject:@"platform"];
}

- (void)setInstanceCount:(NSNumber *)instanceCount
{
	_instanceCount = instanceCount;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceCount"])
		[self.UA_dirtyProperties addObject:@"instanceCount"];
}

- (void)setInstanceType:(NSString *)instanceType
{
	_instanceType = instanceType;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceType"])
		[self.UA_dirtyProperties addObject:@"instanceType"];
}

+ (NSValueTransformer *)instanceCountXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
