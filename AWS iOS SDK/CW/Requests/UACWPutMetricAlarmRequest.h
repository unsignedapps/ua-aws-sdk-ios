//
//  UACWPutMetricAlarmRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//

#import "UACWRequest.h"

@class UACWDimension, UACWPutMetricAlarmResponse;

typedef void(^UACWPutMetricAlarmRequestCompletionBlock)(UACWPutMetricAlarmResponse *response, NSError *error);
typedef BOOL(^UACWPutMetricAlarmRequestShouldContinueWaitingBlock)(UACWPutMetricAlarmResponse *response, NSError *error);

@interface UACWPutMetricAlarmRequest : UACWRequest

@property (nonatomic, copy) NSString *alarmName;
@property (nonatomic, copy) NSString *alarmDescription;
@property (nonatomic) BOOL actionsEnabled;
@property (nonatomic, strong) NSMutableArray *oKActions;
@property (nonatomic, strong) NSMutableArray *alarmActions;
@property (nonatomic, strong) NSMutableArray *insufficientDataActions;
@property (nonatomic, copy) NSString *metricName;
@property (nonatomic, copy) NSString *namespace;
@property (nonatomic) UACWStatistic statistic;
@property (nonatomic, strong) NSMutableArray *dimensions;
@property (nonatomic, strong) NSNumber *period;
@property (nonatomic) UACWUnit unit;
@property (nonatomic, strong) NSNumber *evaluationPeriods;
@property (nonatomic, strong) NSNumber *threshold;
@property (nonatomic) UACWMetricAlarmComparisonOperator comparisonOperator;
// @property (nonatomic, copy) UACWPutMetricAlarmRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UACWPutMetricAlarmRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Adds a OKAction to the oKActions property.
 *
 * This will initialise oKActions with an empty mutable array if necessary.
**/
- (void)addOKAction:(NSString *)oKAction;
/**
 * Adds a AlarmAction to the alarmActions property.
 *
 * This will initialise alarmActions with an empty mutable array if necessary.
**/
- (void)addAlarmAction:(NSString *)alarmAction;
/**
 * Adds a InsufficientDataAction to the insufficientDataActions property.
 *
 * This will initialise insufficientDataActions with an empty mutable array if necessary.
**/
- (void)addInsufficientDataAction:(NSString *)insufficientDataAction;
/**
 * Adds a Dimension to the dimensions property.
 *
 * This will initialise dimensions with an empty mutable array if necessary.
**/
- (void)addDimension:(UACWDimension *)dimension;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UACWPutMetricAlarmRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UACWPutMetricAlarmRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UACWPutMetricAlarmRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UACWPutMetricAlarmRequestCompletionBlock)completionBlock;

@end
