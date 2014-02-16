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
        @"userID": @"userId",
        @"groupName": @"groupName",
        @"groupID": @"groupId"
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

@end
