//
//  UAASDescribeAutoScalingGroupsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeAutoScalingGroupsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASAutoScalingGroup.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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

+ (NSValueTransformer *)autoScalingGroupsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASAutoScalingGroup class]];
}

@end

#pragma clang diagnostic pop