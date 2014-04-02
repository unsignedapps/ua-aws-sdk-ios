//
//  UAASResumeProcessesRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//

#import "UAASRequest.h"

@class UAASResumeProcessesResponse;

typedef void(^UAASResumeProcessesRequestCompletionBlock)(UAASResumeProcessesResponse *response, NSError *error);
typedef BOOL(^UAASResumeProcessesRequestShouldContinueWaitingBlock)(UAASResumeProcessesResponse *response, NSError *error);

@interface UAASResumeProcessesRequest : UAASRequest

@property (nonatomic, copy) NSString *autoScalingGroupName;
@property (nonatomic, strong) NSMutableArray *scalingProcesses;
// @property (nonatomic, copy) UAASResumeProcessesRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UAASResumeProcessesRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)scalingProcessAtIndex:(NSUInteger)index;

/**
 * Adds a ScalingProcess to the scalingProcesses property.
 *
 * This will initialise scalingProcesses with an empty mutable array if necessary.
**/
- (void)addScalingProcess:(NSString *)scalingProcess;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UAASResumeProcessesRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASResumeProcessesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASResumeProcessesRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASResumeProcessesRequestCompletionBlock)completionBlock;

@end
