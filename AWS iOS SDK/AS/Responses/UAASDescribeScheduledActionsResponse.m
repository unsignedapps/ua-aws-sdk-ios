//
//  UAASDescribeScheduledActionsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeScheduledActionsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASScheduledUpdateGroupAction.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASScheduledUpdateGroupAction class]];
}

@end

#pragma clang diagnostic pop