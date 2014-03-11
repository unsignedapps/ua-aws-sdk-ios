//
//  UAEC2UserIdGroupPair.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2UserIdGroupPair.h"

@implementation UAEC2UserIdGroupPair

@synthesize userID=_userID, groupName=_groupName, groupID=_groupID;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"userID": @"UserId",
        @"groupName": @"GroupName",
        @"groupID": @"GroupId"
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
        @"groupName": @"ec2:groupName",
        @"groupID": @"ec2:groupId"
    }];
    return [keyPaths copy];
}

- (void)setUserID:(NSString *)userID
{
	_userID = userID;
	
	if (![self.UA_dirtyProperties containsObject:@"userID"])
		[self.UA_dirtyProperties addObject:@"userID"];
}

- (void)setGroupName:(NSString *)groupName
{
	_groupName = groupName;
	
	if (![self.UA_dirtyProperties containsObject:@"groupName"])
		[self.UA_dirtyProperties addObject:@"groupName"];
}

- (void)setGroupID:(NSString *)groupID
{
	_groupID = groupID;
	
	if (![self.UA_dirtyProperties containsObject:@"groupID"])
		[self.UA_dirtyProperties addObject:@"groupID"];
}

@end
