//
//  UASQSChangeMessageVisibilityBatchRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//

#import "UASQSRequest.h"

@class UASQSChangeMessageVisibilityBatchRequestEntry, UASQSChangeMessageVisibilityBatchResponse;

typedef void(^UASQSChangeMessageVisibilityBatchRequestCompletionBlock)(UASQSChangeMessageVisibilityBatchResponse *response, NSError *error);
typedef BOOL(^UASQSChangeMessageVisibilityBatchRequestShouldContinueWaitingBlock)(UASQSChangeMessageVisibilityBatchResponse *response, NSError *error);

@interface UASQSChangeMessageVisibilityBatchRequest : UASQSRequest

@property (nonatomic, copy) NSString *queueURL;
@property (nonatomic, strong) NSMutableArray *entries;
// @property (nonatomic, copy) UASQSChangeMessageVisibilityBatchRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UASQSChangeMessageVisibilityBatchRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Retrieves the UASQSChangeMessageVisibilityBatchRequestEntry at the specified index.
**/
- (UASQSChangeMessageVisibilityBatchRequestEntry *)entryAtIndex:(NSUInteger)index;

/**
 * Adds a Entry to the entries property.
 *
 * This will initialise entries with an empty mutable array if necessary.
**/
- (void)addEntry:(UASQSChangeMessageVisibilityBatchRequestEntry *)entry;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UASQSChangeMessageVisibilityBatchRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASQSChangeMessageVisibilityBatchRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASQSChangeMessageVisibilityBatchRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASQSChangeMessageVisibilityBatchRequestCompletionBlock)completionBlock;

@end
