//
//  UAASLifecycleHook.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASLifecycleHook.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASLifecycleHook

@synthesize lifecycleHookName=_lifecycleHookName, autoScalingGroupName=_autoScalingGroupName, lifecycleTransition=_lifecycleTransition, notificationTargetARN=_notificationTargetARN, roleARN=_roleARN, notificationMetadata=_notificationMetadata, heartbeatTimeout=_heartbeatTimeout, globalTimeout=_globalTimeout, defaultResult=_defaultResult;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"lifecycleHookName": @"AutoScaling:LifecycleHookName",
        @"autoScalingGroupName": @"AutoScaling:AutoScalingGroupName",
        @"lifecycleTransition": @"AutoScaling:LifecycleTransition",
        @"notificationTargetARN": @"AutoScaling:NotificationTargetARN",
        @"roleARN": @"AutoScaling:RoleARN",
        @"notificationMetadata": @"AutoScaling:NotificationMetadata",
        @"heartbeatTimeout": @"AutoScaling:HeartbeatTimeout",
        @"globalTimeout": @"AutoScaling:GlobalTimeout",
        @"defaultResult": @"AutoScaling:DefaultResult"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)defaultResultQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAASLifecycleHookDefaultResultContinue), @(UAASLifecycleHookDefaultResultAbandon) ]
                                               stringValues:@[ @"CONTINUE", @"ABANDON" ]
                                               unknownValue:@(UAASLifecycleHookDefaultResultUnknown)];
}

+ (NSValueTransformer *)heartbeatTimeoutXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)globalTimeoutXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)defaultResultXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAASLifecycleHookDefaultResultContinue), @(UAASLifecycleHookDefaultResultAbandon) ]
                                               stringValues:@[ @"CONTINUE", @"ABANDON" ]
                                               unknownValue:@(UAASLifecycleHookDefaultResultUnknown)];
}

@end

#pragma clang diagnostic pop