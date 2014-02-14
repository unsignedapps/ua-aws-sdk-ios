//
//  UAASAdjustmentType.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASAdjustmentType.h"

@implementation UAASAdjustmentType

@synthesize adjustmentType=_adjustmentType;

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
        @"adjustmentType": @"AutoScaling:AdjustmentType"
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

@end
