//
//  UAASCreateAutoScalingGroupRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//

#import "UAASRequest.h"

@class UAASTag, UAASCreateAutoScalingGroupResponse;

typedef void(^UAASCreateAutoScalingGroupRequestCompletionBlock)(UAASCreateAutoScalingGroupResponse *response, NSError *error);
typedef BOOL(^UAASCreateAutoScalingGroupRequestShouldContinueWaitingBlock)(UAASCreateAutoScalingGroupResponse *response, NSError *error);

@interface UAASCreateAutoScalingGroupRequest : UAASRequest

@property (nonatomic, copy) NSString *autoScalingGroupName;
@property (nonatomic, copy) NSString *launchConfigurationName;
@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic, strong) NSNumber *minSize;
@property (nonatomic, strong) NSNumber *maxSize;
@property (nonatomic, strong) NSNumber *desiredCapacity;
@property (nonatomic, strong) NSNumber *defaultCooldown;
@property (nonatomic, strong) NSMutableArray *availabilityZones;
@property (nonatomic, strong) NSMutableArray *loadBalancerNames;
@property (nonatomic, copy) NSString *healthCheckType;
@property (nonatomic, strong) NSNumber *healthCheckGracePeriod;
@property (nonatomic, copy) NSString *placementGroup;
@property (nonatomic, copy) NSString *vPCZoneIdentifier;
@property (nonatomic, strong) NSMutableArray *terminationPolicies;
@property (nonatomic, strong) NSMutableArray *tags;
// @property (nonatomic, copy) UAASCreateAutoScalingGroupRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UAASCreateAutoScalingGroupRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Adds a AvailabilityZone to the availabilityZones property.
 *
 * This will initialise availabilityZones with an empty mutable array if necessary.
**/
- (void)addAvailabilityZone:(NSString *)availabilityZone;
/**
 * Adds a LoadBalancerName to the loadBalancerNames property.
 *
 * This will initialise loadBalancerNames with an empty mutable array if necessary.
**/
- (void)addLoadBalancerName:(NSString *)loadBalancerName;
/**
 * Adds a TerminationPolicy to the terminationPolicies property.
 *
 * This will initialise terminationPolicies with an empty mutable array if necessary.
**/
- (void)addTerminationPolicy:(NSString *)terminationPolicy;
/**
 * Adds a Tag to the tags property.
 *
 * This will initialise tags with an empty mutable array if necessary.
**/
- (void)addTag:(UAASTag *)tag;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UAASCreateAutoScalingGroupRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASCreateAutoScalingGroupRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASCreateAutoScalingGroupRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASCreateAutoScalingGroupRequestCompletionBlock)completionBlock;

@end
