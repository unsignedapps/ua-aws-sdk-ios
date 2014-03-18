//
//  UASQSAddPermissionRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//

#import "UASQSRequest.h"

@class UASQSAddPermissionResponse;

typedef void(^UASQSAddPermissionRequestCompletionBlock)(UASQSAddPermissionResponse *response, NSError *error);
typedef BOOL(^UASQSAddPermissionRequestShouldContinueWaitingBlock)(UASQSAddPermissionResponse *response, NSError *error);

@interface UASQSAddPermissionRequest : UASQSRequest

@property (nonatomic, copy) NSString *queueUrl;
@property (nonatomic, copy) NSString *label;
@property (nonatomic, strong) NSMutableArray *aWSAccountIDs;
@property (nonatomic, strong) NSMutableArray *actions;
// @property (nonatomic, copy) UASQSAddPermissionRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UASQSAddPermissionRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Adds a AWSAccountID to the aWSAccountIDs property.
 *
 * This will initialise aWSAccountIDs with an empty mutable array if necessary.
**/
- (void)addAWSAccountID:(NSString *)aWSAccountID;
/**
 * Adds a Action enum to the actions property.
 *
 * This will initialise actions with an empty mutable array if necessary.
**/
- (void)addAction:(UASQSActionName)action;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UASQSAddPermissionRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASQSAddPermissionRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASQSAddPermissionRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASQSAddPermissionRequestCompletionBlock)completionBlock;

@end
