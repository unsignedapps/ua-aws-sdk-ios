//
//  UAASTerminateInstanceInAutoScalingGroupResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASTerminateInstanceInAutoScalingGroupResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASActivity.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASTerminateInstanceInAutoScalingGroupResponse

@synthesize activity=_activity;

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:TerminateInstanceInAutoScalingGroupResponse/AutoScaling:TerminateInstanceInAutoScalingGroupResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"activity": @"AutoScaling:Activity"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)activityXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAASActivity class]];
}

@end

#pragma clang diagnostic pop