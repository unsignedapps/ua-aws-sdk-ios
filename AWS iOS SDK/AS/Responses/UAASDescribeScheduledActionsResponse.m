//
//  UAASDescribeScheduledActionsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeScheduledActionsResponse.h"
#import "UAASScheduledUpdateGroupAction.h"

@implementation UAASDescribeScheduledActionsResponse

@synthesize scheduledUpdateGroupActions=_scheduledUpdateGroupActions, nextToken=_nextToken;

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DescribeScheduledActionsResponse/AutoScaling:DescribeScheduledActionsResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"scheduledUpdateGroupActions": @"AutoScaling:ScheduledUpdateGroupActions/AutoScaling:member",
        @"nextToken": @"AutoScaling:NextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)scheduledUpdateGroupActionsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAASScheduledUpdateGroupAction class]];
}

@end
