//
//  UAASScalingPolicy.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASScalingPolicy.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASAlarm.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASScalingPolicy

@synthesize autoScalingGroupName=_autoScalingGroupName, policyName=_policyName, scalingAdjustment=_scalingAdjustment, adjustmentType=_adjustmentType, cooldown=_cooldown, policyARN=_policyARN, alarms=_alarms, minAdjustmentStep=_minAdjustmentStep;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(alarmAtIndex:) propertyName:@"alarms"];
	}
	return self;
}

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
        @"autoScalingGroupName": @"AutoScaling:AutoScalingGroupName",
        @"policyName": @"AutoScaling:PolicyName",
        @"scalingAdjustment": @"AutoScaling:ScalingAdjustment",
        @"adjustmentType": @"AutoScaling:AdjustmentType",
        @"cooldown": @"AutoScaling:Cooldown",
        @"policyARN": @"AutoScaling:PolicyARN",
        @"alarms": @"AutoScaling:Alarms/AutoScaling:member",
        @"minAdjustmentStep": @"AutoScaling:MinAdjustmentStep"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)adjustmentTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAASScalingPolicyAdjustmentTypeChangeInCapacity), @(UAASScalingPolicyAdjustmentTypeExactCapacity), @(UAASScalingPolicyAdjustmentTypePercentChangeInCapacity) ]
                                               stringValues:@[ @"ChangeInCapacity", @"ExactCapacity", @"PercentChangeInCapacity" ]
                                               unknownValue:@(UAASScalingPolicyAdjustmentTypeUnknown)];
}

+ (NSValueTransformer *)alarmsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAASAlarm class]];
}

+ (NSValueTransformer *)scalingAdjustmentXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)adjustmentTypeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAASScalingPolicyAdjustmentTypeChangeInCapacity), @(UAASScalingPolicyAdjustmentTypeExactCapacity), @(UAASScalingPolicyAdjustmentTypePercentChangeInCapacity) ]
                                               stringValues:@[ @"ChangeInCapacity", @"ExactCapacity", @"PercentChangeInCapacity" ]
                                               unknownValue:@(UAASScalingPolicyAdjustmentTypeUnknown)];
}

+ (NSValueTransformer *)cooldownXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)alarmsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASAlarm class]];
}

+ (NSValueTransformer *)minAdjustmentStepXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end

#pragma clang diagnostic pop