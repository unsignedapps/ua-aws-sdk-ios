//
//  UAASPutScalingPolicyRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASPutScalingPolicyRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASPutScalingPolicyResponse.h"

@interface UAASPutScalingPolicyRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAASScalingPolicyAdjustmentTypeChangeInCapacity), @(UAASScalingPolicyAdjustmentTypeExactCapacity), @(UAASScalingPolicyAdjustmentTypePercentChangeInCapacity) ]
                                               stringValues:@[ @"ChangeInCapacity", @"ExactCapacity", @"PercentChangeInCapacity" ]
                                               unknownValue:@(UAASScalingPolicyAdjustmentTypeUnknown)];
}

+ (NSValueTransformer *)adjustmentTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAASScalingPolicyAdjustmentTypeChangeInCapacity), @(UAASScalingPolicyAdjustmentTypeExactCapacity), @(UAASScalingPolicyAdjustmentTypePercentChangeInCapacity) ]
                                               stringValues:@[ @"ChangeInCapacity", @"ExactCapacity", @"PercentChangeInCapacity" ]
                                               unknownValue:@(UAASScalingPolicyAdjustmentTypeUnknown)];
}

/*#pragma mark - Invocation

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
*/
@end

#pragma clang diagnostic pop