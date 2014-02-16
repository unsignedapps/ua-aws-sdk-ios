//
//  UAEC2DescribeReservedInstancesOfferingsRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//

#import "UAEC2Request.h"

@class UAEC2Filter, UAEC2DescribeReservedInstancesOfferingsResponse;

typedef void(^UAEC2DescribeReservedInstancesOfferingsRequestCompletionBlock)(UAEC2DescribeReservedInstancesOfferingsResponse *response, NSError *error);
typedef BOOL(^UAEC2DescribeReservedInstancesOfferingsRequestShouldContinueWaitingBlock)(UAEC2DescribeReservedInstancesOfferingsResponse *response, NSError *error);

@interface UAEC2DescribeReservedInstancesOfferingsRequest : UAEC2Request

@property (nonatomic) BOOL dryRun;
@property (nonatomic, strong) NSMutableArray *reservedInstancesOfferingIDs;
@property (nonatomic, copy) NSString *instanceType;
@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic, copy) NSString *productDescription;
@property (nonatomic, strong) NSMutableArray *filters;
@property (nonatomic, copy) NSString *instanceTenancy;
@property (nonatomic, copy) NSString *offeringType;
@property (nonatomic, copy) NSString *nextToken;
@property (nonatomic, strong) NSNumber *maxResults;
@property (nonatomic) BOOL includeMarketplace;
@property (nonatomic, strong) NSNumber *minDuration;
@property (nonatomic, strong) NSNumber *maxDuration;
@property (nonatomic, strong) NSNumber *maxInstanceCount;
// @property (nonatomic, copy) UAEC2DescribeReservedInstancesOfferingsRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UAEC2DescribeReservedInstancesOfferingsRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Adds a ReservedInstancesOfferingID to the reservedInstancesOfferingIDs property.
 *
 * This will initialise reservedInstancesOfferingIDs with an empty mutable array if necessary.
**/
- (void)addReservedInstancesOfferingID:(NSString *)reservedInstancesOfferingID;
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
- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2DescribeReservedInstancesOfferingsRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2DescribeReservedInstancesOfferingsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2DescribeReservedInstancesOfferingsRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2DescribeReservedInstancesOfferingsRequestCompletionBlock)completionBlock;

@end
