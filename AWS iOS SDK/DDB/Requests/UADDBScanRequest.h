//
//  UADDBScanRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//

#import "UADDBRequest.h"

@class UADDBScanFilter, UADDBScanResponse;

typedef void(^UADDBScanRequestCompletionBlock)(UADDBScanResponse *response, NSError *error);
typedef BOOL(^UADDBScanRequestShouldContinueWaitingBlock)(UADDBScanResponse *response, NSError *error);

@interface UADDBScanRequest : UADDBRequest

@property (nonatomic, copy) NSString *tableName;
@property (nonatomic, strong) NSMutableArray *attributesToGet;
@property (nonatomic, strong) NSNumber *limit;
@property (nonatomic) UADDBSelectType select;
@property (nonatomic, strong) NSMutableDictionary *scanFilter;
@property (nonatomic, copy) NSString *conditionalOperator;
@property (nonatomic, strong) NSMutableDictionary *exclusiveStartKey;
@property (nonatomic) UADDBReturnConsumedCapacityType returnConsumedCapacity;
@property (nonatomic, strong) NSNumber *totalSegments;
@property (nonatomic, strong) NSNumber *segment;
// @property (nonatomic, copy) UADDBScanRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UADDBScanRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)attributeToGetAtIndex:(NSUInteger)index;

/**
 * Retrieves the UADDBScanFilter for the specified AttributeName.
**/
- (UADDBScanFilter *)scanFilterForAttributeName:(NSString *)attributeName;

/**
 * Retrieves the DynamoDB dictionary in exclusiveStartKey for the specified Attribute Name.
**/
- (NSMutableDictionary *)exclusiveStartKeyValueForAttributeName:(NSString *)attributeName;

/**
 * Adds a AttributeToGet to the attributesToGet property.
 *
 * This will initialise attributesToGet with an empty mutable array if necessary.
**/
- (void)addAttributeToGet:(NSString *)attributeToGet;

/**
 * Sets the value of AttributeName to ScanFilter in the scanFilter property.
 *
 * This will initialise scanFilter with an empty mutable dictionary if necessary.
**/
- (void)setScanFilter:(UADDBScanFilter *)scanFilter forAttributeName:(NSString *)attributeName;

/**
 * Sets the DynamoDB attribute value for the specified attribute name in exclusiveStartKey property.
 *
 * This will initialise exclusiveStartKey with an empty mutable dictionary if necessary.
**/
- (void)setExclusiveStartKeyValue:(id)exclusiveStartKey forAttributeName:(NSString *)attributeName;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UADDBScanRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UADDBScanRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UADDBScanRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UADDBScanRequestCompletionBlock)completionBlock;

@end
