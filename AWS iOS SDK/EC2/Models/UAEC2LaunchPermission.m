//
//  UAEC2LaunchPermission.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2LaunchPermission.h"

@implementation UAEC2LaunchPermission

@synthesize userID=_userID, group=_group;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"userID": @"UserId",
        @"group": @"Group"
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
        @"userID": @"ec2:userId",
        @"group": @"ec2:group"
    }];
    return [keyPaths copy];
}

- (void)setUserID:(NSString *)userID
{
	_userID = userID;
	
	if (![self.UA_dirtyProperties containsObject:@"userID"])
		[self.UA_dirtyProperties addObject:@"userID"];
}

- (void)setGroup:(NSString *)group
{
	_group = group;
	
	if (![self.UA_dirtyProperties containsObject:@"group"])
		[self.UA_dirtyProperties addObject:@"group"];
}

@end
