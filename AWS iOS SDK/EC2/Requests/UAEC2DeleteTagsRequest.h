//
//  UAEC2DeleteTagsRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//

#import "UAEC2Request.h"

@class UAEC2Tag, UAEC2DeleteTagsResponse;

typedef void(^UAEC2DeleteTagsRequestCompletionBlock)(UAEC2DeleteTagsResponse *response, NSError *error);
typedef BOOL(^UAEC2DeleteTagsRequestShouldContinueWaitingBlock)(UAEC2DeleteTagsResponse *response, NSError *error);

@interface UAEC2DeleteTagsRequest : UAEC2Request

@property (nonatomic) BOOL dryRun;
@property (nonatomic, strong) NSMutableArray *resources;
@property (nonatomic, strong) NSMutableArray *tags;
// @property (nonatomic, copy) UAEC2DeleteTagsRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UAEC2DeleteTagsRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)resourceAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2Tag at the specified index.
**/
- (UAEC2Tag *)tagAtIndex:(NSUInteger)index;

/**
 * Adds a Resource to the resources property.
 *
 * This will initialise resources with an empty mutable array if necessary.
**/
- (void)addResource:(NSString *)resource;
/**
 * Adds a Tag to the tags property.
 *
 * This will initialise tags with an empty mutable array if necessary.
**/
- (void)addTag:(UAEC2Tag *)tag;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2DeleteTagsRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2DeleteTagsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2DeleteTagsRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2DeleteTagsRequestCompletionBlock)completionBlock;

@end
