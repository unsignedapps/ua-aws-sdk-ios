//
//  UAASDescribeAccountLimitsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeAccountLimitsResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDescribeAccountLimitsResponse

@synthesize maxNumberOfAutoScalingGroups=_maxNumberOfAutoScalingGroups, maxNumberOfLaunchConfigurations=_maxNumberOfLaunchConfigurations;

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DescribeAccountLimitsResponse/AutoScaling:DescribeAccountLimitsResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"maxNumberOfAutoScalingGroups": @"AutoScaling:MaxNumberOfAutoScalingGroups",
        @"maxNumberOfLaunchConfigurations": @"AutoScaling:MaxNumberOfLaunchConfigurations"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)maxNumberOfAutoScalingGroupsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)maxNumberOfLaunchConfigurationsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end

#pragma clang diagnostic pop