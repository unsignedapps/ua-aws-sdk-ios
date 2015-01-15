//
//  UAIAMGenerateCredentialReportRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//

#import "UAIAMRequest.h"

@class UAIAMGenerateCredentialReportResponse;

typedef void(^UAIAMGenerateCredentialReportRequestCompletionBlock)(UAIAMGenerateCredentialReportResponse *response, NSError *error);
typedef BOOL(^UAIAMGenerateCredentialReportRequestShouldContinueWaitingBlock)(UAIAMGenerateCredentialReportResponse *response, NSError *error);

@interface UAIAMGenerateCredentialReportRequest : UAIAMRequest

// @property (nonatomic, copy) UAIAMGenerateCredentialReportRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UAIAMGenerateCredentialReportRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMGenerateCredentialReportRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMGenerateCredentialReportRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMGenerateCredentialReportRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMGenerateCredentialReportRequestCompletionBlock)completionBlock;

@end
