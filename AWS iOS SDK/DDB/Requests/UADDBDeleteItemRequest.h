//
//  UADDBDeleteItemRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//

#import "UADDBRequest.h"

@class UADDBExpectedItem, UADDBDeleteItemResponse;

typedef void(^UADDBDeleteItemRequestCompletionBlock)(UADDBDeleteItemResponse *response, NSError *error);
typedef BOOL(^UADDBDeleteItemRequestShouldContinueWaitingBlock)(UADDBDeleteItemResponse *response, NSError *error);

@interface UADDBDeleteItemRequest : UADDBRequest

@property (nonatomic, copy) NSString *tableName;
@property (nonatomic, strong) NSMutableDictionary *key;
@property (nonatomic, strong) NSMutableDictionary *expected;
@property (nonatomic, copy) NSString *conditionalOperator;
@property (nonatomic) UADDBReturnValueType returnValues;
@property (nonatomic) UADDBReturnConsumedCapacityType returnConsumedCapacity;
@property (nonatomic) UADDBReturnItemCollectionMetricsType returnItemCollectionMetrics;
// @property (nonatomic, copy) UADDBDeleteItemRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UADDBDeleteItemRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Retrieves the DynamoDB dictionary in key for the specified Attribute Name.
**/
- (NSMutableDictionary *)keyValueForAttributeName:(NSString *)attributeName;

/**
 * Retrieves the UADDBExpectedItem for the specified AttributeName.
**/
- (UADDBExpectedItem *)expectedForAttributeName:(NSString *)attributeName;

/**
 * Sets the DynamoDB attribute value for the specified attribute name in key property.
 *
 * This will initialise key with an empty mutable dictionary if necessary.
**/
- (void)setKeyValue:(id)key forAttributeName:(NSString *)attributeName;

/**
 * Sets the value of AttributeName to Expected in the expected property.
 *
 * This will initialise expected with an empty mutable dictionary if necessary.
**/
- (void)setExpected:(UADDBExpectedItem *)expected forAttributeName:(NSString *)attributeName;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UADDBDeleteItemRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UADDBDeleteItemRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UADDBDeleteItemRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UADDBDeleteItemRequestCompletionBlock)completionBlock;

@end
