//
//  UAEC2CreateInstanceExportTaskRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//

#import "UAEC2Request.h"

@class UAEC2ExportToS3Task, UAEC2CreateInstanceExportTaskResponse;

typedef void(^UAEC2CreateInstanceExportTaskRequestCompletionBlock)(UAEC2CreateInstanceExportTaskResponse *response, NSError *error);
typedef BOOL(^UAEC2CreateInstanceExportTaskRequestShouldContinueWaitingBlock)(UAEC2CreateInstanceExportTaskResponse *response, NSError *error);

@interface UAEC2CreateInstanceExportTaskRequest : UAEC2Request

@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic, copy) NSString *targetEnvironment;
@property (nonatomic, copy) UAEC2ExportToS3Task *exportToS3Task;
// @property (nonatomic, copy) UAEC2CreateInstanceExportTaskRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UAEC2CreateInstanceExportTaskRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2CreateInstanceExportTaskRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2CreateInstanceExportTaskRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2CreateInstanceExportTaskRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2CreateInstanceExportTaskRequestCompletionBlock)completionBlock;

@end
