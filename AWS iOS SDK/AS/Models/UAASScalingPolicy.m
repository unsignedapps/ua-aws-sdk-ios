//
//  UAASScalingPolicy.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASScalingPolicy.h"
#import "UAASAlarm.h"

@implementation UAASScalingPolicy

@synthesize autoScalingGroupName=_autoScalingGroupName, policyName=_policyName, scalingAdjustment=_scalingAdjustment, adjustmentType=_adjustmentType, cooldown=_cooldown, policyARN=_policyARN, alarms=_alarms, minAdjustmentStep=_minAdjustmentStep;

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
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"ChangeInCapacity"])
		    return @(UAASScalingPolicyAdjustmentTypeChangeInCapacity);
		if ([value isEqualToString:@"ExactCapacity"])
		    return @(UAASScalingPolicyAdjustmentTypeExactCapacity);
		if ([value isEqualToString:@"PercentChangeInCapacity"])
		    return @(UAASScalingPolicyAdjustmentTypePercentChangeInCapacity);

		return @(UAASScalingPolicyAdjustmentTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAASScalingPolicyAdjustmentType castValue = (UAASScalingPolicyAdjustmentType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAASScalingPolicyAdjustmentTypeChangeInCapacity:
			    return @"ChangeInCapacity";
			case UAASScalingPolicyAdjustmentTypeExactCapacity:
			    return @"ExactCapacity";
			case UAASScalingPolicyAdjustmentTypePercentChangeInCapacity:
			    return @"PercentChangeInCapacity";

			case UAASScalingPolicyAdjustmentTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)alarmsQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAASAlarm class]];
}

+ (NSValueTransformer *)scalingAdjustmentXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)adjustmentTypeXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAASScalingPolicyAdjustmentTypeUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"ChangeInCapacity"])
		    return @(UAASScalingPolicyAdjustmentTypeChangeInCapacity);
		if ([value isEqualToString:@"ExactCapacity"])
		    return @(UAASScalingPolicyAdjustmentTypeExactCapacity);
		if ([value isEqualToString:@"PercentChangeInCapacity"])
		    return @(UAASScalingPolicyAdjustmentTypePercentChangeInCapacity);

		return @(UAASScalingPolicyAdjustmentTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAASScalingPolicyAdjustmentType castValue = (UAASScalingPolicyAdjustmentType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAASScalingPolicyAdjustmentTypeChangeInCapacity:
			    return @"ChangeInCapacity";
			case UAASScalingPolicyAdjustmentTypeExactCapacity:
			    return @"ExactCapacity";
			case UAASScalingPolicyAdjustmentTypePercentChangeInCapacity:
			    return @"PercentChangeInCapacity";

			case UAASScalingPolicyAdjustmentTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)cooldownXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)alarmsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAASAlarm class]];
}

+ (NSValueTransformer *)minAdjustmentStepXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
