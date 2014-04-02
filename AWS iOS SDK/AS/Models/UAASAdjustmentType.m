//
//  UAASAdjustmentType.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAASScalingPolicyAdjustmentTypeChangeInCapacity), @(UAASScalingPolicyAdjustmentTypeExactCapacity), @(UAASScalingPolicyAdjustmentTypePercentChangeInCapacity) ]
                                               stringValues:@[ @"ChangeInCapacity", @"ExactCapacity", @"PercentChangeInCapacity" ]
                                               unknownValue:@(UAASScalingPolicyAdjustmentTypeUnknown)];
}

+ (NSValueTransformer *)adjustmentTypeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAASScalingPolicyAdjustmentTypeChangeInCapacity), @(UAASScalingPolicyAdjustmentTypeExactCapacity), @(UAASScalingPolicyAdjustmentTypePercentChangeInCapacity) ]
                                               stringValues:@[ @"ChangeInCapacity", @"ExactCapacity", @"PercentChangeInCapacity" ]
                                               unknownValue:@(UAASScalingPolicyAdjustmentTypeUnknown)];
}

@end
