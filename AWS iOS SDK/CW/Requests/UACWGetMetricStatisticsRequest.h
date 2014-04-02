//
//  UACWGetMetricStatisticsRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//

#import "UACWRequest.h"

@class UACWDimension, UACWGetMetricStatisticsResponse;

typedef void(^UACWGetMetricStatisticsRequestCompletionBlock)(UACWGetMetricStatisticsResponse *response, NSError *error);
typedef BOOL(^UACWGetMetricStatisticsRequestShouldContinueWaitingBlock)(UACWGetMetricStatisticsResponse *response, NSError *error);

@interface UACWGetMetricStatisticsRequest : UACWRequest

@property (nonatomic, copy) NSString *namespace;
@property (nonatomic, copy) NSString *metricName;
@property (nonatomic, strong) NSMutableArray *dimensions;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
@property (nonatomic, strong) NSNumber *period;
@property (nonatomic, strong) NSMutableArray *statistics;
@property (nonatomic) UACWUnit unit;
// @property (nonatomic, copy) UACWGetMetricStatisticsRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UACWGetMetricStatisticsRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Retrieves the UACWDimension at the specified index.
**/
- (UACWDimension *)dimensionAtIndex:(NSUInteger)index;

/**
 * Retrieves the UACWStatistic at the specified index.
**/
- (UACWStatistic)statisticAtIndex:(NSUInteger)index;

/**
 * Adds a Dimension to the dimensions property.
 *
 * This will initialise dimensions with an empty mutable array if necessary.
**/
- (void)addDimension:(UACWDimension *)dimension;
/**
 * Adds a Statistic enum to the statistics property.
 *
 * This will initialise statistics with an empty mutable array if necessary.
**/
- (void)addStatistic:(UACWStatistic)statistic;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UACWGetMetricStatisticsRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UACWGetMetricStatisticsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UACWGetMetricStatisticsRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UACWGetMetricStatisticsRequestCompletionBlock)completionBlock;

@end
