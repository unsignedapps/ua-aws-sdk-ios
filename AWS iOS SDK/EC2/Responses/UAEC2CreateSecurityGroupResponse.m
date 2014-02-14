//
//  UAEC2CreateSecurityGroupResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateSecurityGroupResponse.h"

@implementation UAEC2CreateSecurityGroupResponse

@synthesize groupID=_groupID;

+ (NSString *)XPathPrefix
{
    return @"./ec2:CreateSecurityGroupResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"groupID": @"ec2:groupId"
    }];
    return [keyPaths copy];
}

@end
