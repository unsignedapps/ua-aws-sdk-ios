//
//  UAEC2DescribeSpotPriceHistoryRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//

#import "UAEC2Request.h"

@class UAEC2Filter, UAEC2DescribeSpotPriceHistoryResponse;

typedef void(^UAEC2DescribeSpotPriceHistoryRequestCompletionBlock)(UAEC2DescribeSpotPriceHistoryResponse *response, NSError *error);
typedef BOOL(^UAEC2DescribeSpotPriceHistoryRequestShouldContinueWaitingBlock)(UAEC2DescribeSpotPriceHistoryResponse *response, NSError *error);

@interface UAEC2DescribeSpotPriceHistoryRequest : UAEC2Request

@property (nonatomic) BOOL dryRun;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
@property (nonatomic, strong) NSMutableArray *instanceTypes;
@property (nonatomic, strong) NSMutableArray *productDescriptions;
@property (nonatomic, strong) NSMutableArray *filters;
@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic, strong) NSNumber *maxResults;
@property (nonatomic, copy) NSString *nextToken;
// @property (nonatomic, copy) UAEC2DescribeSpotPriceHistoryRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UAEC2DescribeSpotPriceHistoryRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)instanceTypeAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2SpotRequestProductDescription at the specified index.
**/
- (UAEC2SpotRequestProductDescription)productionDescriptionAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2Filter at the specified index.
**/
- (UAEC2Filter *)filterAtIndex:(NSUInteger)index;

/**
 * Adds a InstanceType to the instanceTypes property.
 *
 * This will initialise instanceTypes with an empty mutable array if necessary.
**/
- (void)addInstanceType:(NSString *)instanceType;
/**
 * Adds a ProductionDescription enum to the productDescriptions property.
 *
 * This will initialise productDescriptions with an empty mutable array if necessary.
**/
- (void)addProductionDescription:(UAEC2SpotRequestProductDescription)productionDescription;
/**
 * Adds a Filter to the filters property.
 *
 * This will initialise filters with an empty mutable array if necessary.
**/
- (void)addFilter:(UAEC2Filter *)filter;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2DescribeSpotPriceHistoryRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2DescribeSpotPriceHistoryRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2DescribeSpotPriceHistoryRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2DescribeSpotPriceHistoryRequestCompletionBlock)completionBlock;

@end
