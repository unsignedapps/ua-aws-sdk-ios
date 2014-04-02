//
//  UADDBCreateTableRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//

#import "UADDBRequest.h"

@class UADDBAttributeDefinition, UADDBKeySchema, UADDBLocalSecondaryIndex, UADDBGlobalSecondaryIndex, UADDBProvisionedThroughput, UADDBCreateTableResponse;

typedef void(^UADDBCreateTableRequestCompletionBlock)(UADDBCreateTableResponse *response, NSError *error);
typedef BOOL(^UADDBCreateTableRequestShouldContinueWaitingBlock)(UADDBCreateTableResponse *response, NSError *error);

@interface UADDBCreateTableRequest : UADDBRequest

@property (nonatomic, strong) NSMutableArray *attributeDefinitions;
@property (nonatomic, copy) NSString *tableName;
@property (nonatomic, strong) NSMutableArray *keySchema;
@property (nonatomic, strong) NSMutableArray *localSecondaryIndexes;
@property (nonatomic, strong) NSMutableArray *globalSecondaryIndexes;
@property (nonatomic, copy) UADDBProvisionedThroughput *provisionedThroughput;
// @property (nonatomic, copy) UADDBCreateTableRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UADDBCreateTableRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Retrieves the UADDBAttributeDefinition at the specified index.
**/
- (UADDBAttributeDefinition *)attributeDefinitionAtIndex:(NSUInteger)index;

/**
 * Retrieves the UADDBKeySchema at the specified index.
**/
- (UADDBKeySchema *)keySchemaAtIndex:(NSUInteger)index;

/**
 * Retrieves the UADDBLocalSecondaryIndex at the specified index.
**/
- (UADDBLocalSecondaryIndex *)localSecondaryIndexAtIndex:(NSUInteger)index;

/**
 * Retrieves the UADDBGlobalSecondaryIndex at the specified index.
**/
- (UADDBGlobalSecondaryIndex *)globalSecondaryIndexAtIndex:(NSUInteger)index;

/**
 * Adds a AttributeDefinition to the attributeDefinitions property.
 *
 * This will initialise attributeDefinitions with an empty mutable array if necessary.
**/
- (void)addAttributeDefinition:(UADDBAttributeDefinition *)attributeDefinition;
/**
 * Adds a KeySchema to the keySchema property.
 *
 * This will initialise keySchema with an empty mutable array if necessary.
**/
- (void)addKeySchema:(UADDBKeySchema *)keySchema;
/**
 * Adds a LocalSecondaryIndex to the localSecondaryIndexes property.
 *
 * This will initialise localSecondaryIndexes with an empty mutable array if necessary.
**/
- (void)addLocalSecondaryIndex:(UADDBLocalSecondaryIndex *)localSecondaryIndex;
/**
 * Adds a GlobalSecondaryIndex to the globalSecondaryIndexes property.
 *
 * This will initialise globalSecondaryIndexes with an empty mutable array if necessary.
**/
- (void)addGlobalSecondaryIndex:(UADDBGlobalSecondaryIndex *)globalSecondaryIndex;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UADDBCreateTableRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UADDBCreateTableRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UADDBCreateTableRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UADDBCreateTableRequestCompletionBlock)completionBlock;

@end
