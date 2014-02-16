//
//  UAASPutScalingPolicyRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASPutScalingPolicyRequest.h"
#import "UAASPutScalingPolicyResponse.h"

@interface UAASPutScalingPolicyRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAASPutScalingPolicyRequest

@synthesize action=_action, version=_version, autoScalingGroupName=_autoScalingGroupName, policyName=_policyName, scalingAdjustment=_scalingAdjustment, adjustmentType=_adjustmentType, cooldown=_cooldown, minAdjustmentStep=_minAdjustmentStep;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"PutScalingPolicy"];
		[self setVersion:@"2011-01-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASPutScalingPolicyResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"autoScalingGroupName": @"AutoScalingGroupName",
        @"policyName": @"PolicyName",
        @"scalingAdjustment": @"ScalingAdjustment",
        @"adjustmentType": @"AdjustmentType",
        @"cooldown": @"Cooldown",
        @"minAdjustmentStep": @"MinAdjustmentStep"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)adjustmentTypeJSONTransformer
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

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASPutScalingPolicyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASPutScalingPolicyRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASPutScalingPolicyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASPutScalingPolicyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
