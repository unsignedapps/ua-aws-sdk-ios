//
//  UAASDescribeAutoScalingGroupsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeAutoScalingGroupsResponse.h"
#import "UAASAutoScalingGroup.h"

@implementation UAASDescribeAutoScalingGroupsResponse

@synthesize autoScalingGroups=_autoScalingGroups, nextToken=_nextToken;

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DescribeAutoScalingGroupsResponse/AutoScaling:DescribeAutoScalingGroupsResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"autoScalingGroups": @"AutoScaling:AutoScalingGroups/AutoScaling:member",
        @"nextToken": @"AutoScaling:NextToken"
    }];
    return [keyPaths copy];
}

- (UAASAutoScalingGroup *)autoScalingGroupAtIndex:(NSUInteger)index
{
    if (self.autoScalingGroups == nil || index >= ([self.autoScalingGroups count]-1))
        return nil;

    return [self.autoScalingGroups objectAtIndex:index];
}

+ (NSValueTransformer *)autoScalingGroupsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASAutoScalingGroup class]];
}

@end
