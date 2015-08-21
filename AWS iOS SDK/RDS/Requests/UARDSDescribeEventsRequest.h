//
//  UARDSDescribeEventsRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//

#import "UARDSRequest.h"

@class UARDSFilter, UARDSEventsMessage;

typedef void(^UARDSDescribeEventsRequestCompletionBlock)(UARDSEventsMessage *response, NSError *error);
typedef BOOL(^UARDSDescribeEventsRequestShouldContinueWaitingBlock)(UARDSEventsMessage *response, NSError *error);

@interface UARDSDescribeEventsRequest : UARDSRequest

@property (nonatomic, copy) NSString *sourceIdentifier;
@property (nonatomic) UARDSSourceType sourceType;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
@property (nonatomic, strong) NSNumber *duration;
@property (nonatomic, strong) NSMutableArray *eventCategories;
@property (nonatomic, strong) NSMutableArray *filters;
@property (nonatomic, strong) NSNumber *maxRecords;
@property (nonatomic, copy) NSString *marker;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)eventCategoryAtIndex:(NSUInteger)index;

/**
 * Retrieves the UARDSFilter at the specified index.
**/
- (UARDSFilter *)filterAtIndex:(NSUInteger)index;

/**
 * Adds a EventCategory to the eventCategories property.
 *
 * This will initialise eventCategories with an empty mutable array if necessary.
**/
- (void)addEventCategory:(NSString *)eventCategory;
/**
 * Adds a Filter to the filters property.
 *
 * This will initialise filters with an empty mutable array if necessary.
**/
- (void)addFilter:(UARDSFilter *)filter;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UARDSDescribeEventsRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UARDSDescribeEventsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UARDSDescribeEventsRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UARDSDescribeEventsRequestCompletionBlock)completionBlock;

@end
