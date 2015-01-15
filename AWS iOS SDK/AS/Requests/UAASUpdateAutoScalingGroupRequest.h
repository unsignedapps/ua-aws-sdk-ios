//
//  UAASUpdateAutoScalingGroupRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//

#import "UAASRequest.h"

@class UAASUpdateAutoScalingGroupResponse;

typedef void(^UAASUpdateAutoScalingGroupRequestCompletionBlock)(UAASUpdateAutoScalingGroupResponse *response, NSError *error);
typedef BOOL(^UAASUpdateAutoScalingGroupRequestShouldContinueWaitingBlock)(UAASUpdateAutoScalingGroupResponse *response, NSError *error);

@interface UAASUpdateAutoScalingGroupRequest : UAASRequest

@property (nonatomic, copy) NSString *autoScalingGroupName;
@property (nonatomic, copy) NSString *launchConfigurationName;
@property (nonatomic, strong) NSNumber *minSize;
@property (nonatomic, strong) NSNumber *maxSize;
@property (nonatomic, strong) NSNumber *desiredCapacity;
@property (nonatomic, strong) NSNumber *defaultCooldown;
@property (nonatomic, strong) NSMutableArray *availabilityZones;
@property (nonatomic) UAASHealthCheckType healthCheckType;
@property (nonatomic, strong) NSNumber *healthCheckGracePeriod;
@property (nonatomic, copy) NSString *placementGroup;
@property (nonatomic, copy) NSString *vPCZoneIdentifier;
@property (nonatomic, strong) NSMutableArray *terminationPolicies;
// @property (nonatomic, copy) UAASUpdateAutoScalingGroupRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UAASUpdateAutoScalingGroupRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)availabilityZoneAtIndex:(NSUInteger)index;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)terminationPolicyAtIndex:(NSUInteger)index;

/**
 * Adds a AvailabilityZone to the availabilityZones property.
 *
 * This will initialise availabilityZones with an empty mutable array if necessary.
**/
- (void)addAvailabilityZone:(NSString *)availabilityZone;
/**
 * Adds a TerminationPolicy to the terminationPolicies property.
 *
 * This will initialise terminationPolicies with an empty mutable array if necessary.
**/
- (void)addTerminationPolicy:(NSString *)terminationPolicy;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UAASUpdateAutoScalingGroupRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASUpdateAutoScalingGroupRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASUpdateAutoScalingGroupRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * This will find the value at the specified KeyPath and check against the supplied array. The request will stop waiting when the value is found in the array.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	keyPath				A keyPath to execute on the results.
 * @param	array 				An array of values that, if found, would cause the request to end.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASUpdateAutoScalingGroupRequestCompletionBlock)completionBlock;

@end
