//
//  UAEC2PlacementGroup.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2PlacementGroup.h"

@implementation UAEC2PlacementGroup

@synthesize groupName=_groupName, strategy=_strategy, state=_state;

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
        @"groupName": @"ec2:groupName",
        @"strategy": @"ec2:strategy",
        @"state": @"ec2:state"
    }];
    return [keyPaths copy];
}

@end
