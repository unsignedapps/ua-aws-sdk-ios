//
//  UAELBCreateLoadBalancerRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//

#import "UAELBRequest.h"

@class UAELBListener, UAELBCreateLoadBalancerResponse;

typedef void(^UAELBCreateLoadBalancerRequestCompletionBlock)(UAELBCreateLoadBalancerResponse *response, NSError *error);
typedef BOOL(^UAELBCreateLoadBalancerRequestShouldContinueWaitingBlock)(UAELBCreateLoadBalancerResponse *response, NSError *error);

@interface UAELBCreateLoadBalancerRequest : UAELBRequest

@property (nonatomic, copy) NSString *loadBalancerName;
@property (nonatomic, strong) NSMutableArray *listeners;
@property (nonatomic, strong) NSMutableArray *availabilityZones;
@property (nonatomic, strong) NSMutableArray *subnets;
@property (nonatomic, strong) NSMutableArray *securityGroups;
@property (nonatomic) UAELBScheme scheme;
// @property (nonatomic, copy) UAELBCreateLoadBalancerRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UAELBCreateLoadBalancerRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Retrieves the UAELBListener at the specified index.
**/
- (UAELBListener *)listenerAtIndex:(NSUInteger)index;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)availabilityZoneAtIndex:(NSUInteger)index;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)subnetAtIndex:(NSUInteger)index;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)securityGroupAtIndex:(NSUInteger)index;

/**
 * Adds a Listener to the listeners property.
 *
 * This will initialise listeners with an empty mutable array if necessary.
**/
- (void)addListener:(UAELBListener *)listener;
/**
 * Adds a AvailabilityZone to the availabilityZones property.
 *
 * This will initialise availabilityZones with an empty mutable array if necessary.
**/
- (void)addAvailabilityZone:(NSString *)availabilityZone;
/**
 * Adds a Subnet to the subnets property.
 *
 * This will initialise subnets with an empty mutable array if necessary.
**/
- (void)addSubnet:(NSString *)subnet;
/**
 * Adds a SecurityGroup to the securityGroups property.
 *
 * This will initialise securityGroups with an empty mutable array if necessary.
**/
- (void)addSecurityGroup:(NSString *)securityGroup;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UAELBCreateLoadBalancerRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAELBCreateLoadBalancerRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAELBCreateLoadBalancerRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAELBCreateLoadBalancerRequestCompletionBlock)completionBlock;

@end
