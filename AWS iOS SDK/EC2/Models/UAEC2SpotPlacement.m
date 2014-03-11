//
//  UAEC2SpotPlacement.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2SpotPlacement.h"

@implementation UAEC2SpotPlacement

@synthesize availabilityZone=_availabilityZone, groupName=_groupName;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"availabilityZone": @"AvailabilityZone",
        @"groupName": @"GroupName"
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
        @"availabilityZone": @"ec2:availabilityZone",
        @"groupName": @"ec2:groupName"
    }];
    return [keyPaths copy];
}

- (void)setAvailabilityZone:(NSString *)availabilityZone
{
	_availabilityZone = availabilityZone;
	
	if (![self.UA_dirtyProperties containsObject:@"availabilityZone"])
		[self.UA_dirtyProperties addObject:@"availabilityZone"];
}

- (void)setGroupName:(NSString *)groupName
{
	_groupName = groupName;
	
	if (![self.UA_dirtyProperties containsObject:@"groupName"])
		[self.UA_dirtyProperties addObject:@"groupName"];
}

@end
