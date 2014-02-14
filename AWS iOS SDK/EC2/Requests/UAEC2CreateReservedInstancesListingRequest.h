//
//  UAEC2CreateReservedInstancesListingRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//

#import "UAEC2Request.h"

@class UAEC2PriceScheduleSpecification, UAEC2CreateReservedInstancesListingResponse;

typedef void(^UAEC2CreateReservedInstancesListingRequestCompletionBlock)(UAEC2CreateReservedInstancesListingResponse *response, NSError *error);
typedef BOOL(^UAEC2CreateReservedInstancesListingRequestShouldContinueWaitingBlock)(UAEC2CreateReservedInstancesListingResponse *response, NSError *error);

@interface UAEC2CreateReservedInstancesListingRequest : UAEC2Request

@property (nonatomic, copy) NSString *reservedInstancesID;
@property (nonatomic, strong) NSNumber *instanceCount;
@property (nonatomic, strong) NSMutableArray *priceSchedules;
@property (nonatomic, copy) NSString *clientToken;
// @property (nonatomic, copy) UAEC2CreateReservedInstancesListingRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UAEC2CreateReservedInstancesListingRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Adds a PriceSchedule to the priceSchedules property.
 *
 * This will initialise priceSchedules with an empty mutable array if necessary.
**/
- (void)addPriceSchedule:(UAEC2PriceScheduleSpecification *)priceSchedule;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2CreateReservedInstancesListingRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2CreateReservedInstancesListingRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2CreateReservedInstancesListingRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2CreateReservedInstancesListingRequestCompletionBlock)completionBlock;

@end
