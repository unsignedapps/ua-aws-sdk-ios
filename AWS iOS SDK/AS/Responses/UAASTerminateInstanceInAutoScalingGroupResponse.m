//
//  UAASTerminateInstanceInAutoScalingGroupResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASTerminateInstanceInAutoScalingGroupResponse.h"
#import "UAASActivity.h"

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
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAASActivity class]];
}

@end
