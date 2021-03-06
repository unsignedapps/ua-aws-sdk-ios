//
//  UAIAMGetInstanceProfileRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//

#import "UAIAMRequest.h"

@class UAIAMGetInstanceProfileResponse;

typedef void(^UAIAMGetInstanceProfileRequestCompletionBlock)(UAIAMGetInstanceProfileResponse *response, NSError *error);
typedef BOOL(^UAIAMGetInstanceProfileRequestShouldContinueWaitingBlock)(UAIAMGetInstanceProfileResponse *response, NSError *error);

@interface UAIAMGetInstanceProfileRequest : UAIAMRequest

@property (nonatomic, copy) NSString *instanceProfileName;
// @property (nonatomic, copy) UAIAMGetInstanceProfileRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UAIAMGetInstanceProfileRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

- (id)initWithInstanceProfileName:(NSString *)instanceProfileName;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMGetInstanceProfileRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMGetInstanceProfileRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMGetInstanceProfileRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMGetInstanceProfileRequestCompletionBlock)completionBlock;

@end
