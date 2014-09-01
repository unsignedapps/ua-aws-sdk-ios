//
//  UADDBBatchGetItemResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBResponse.h"

@class UADDBUnprocessedKey, UADDBConsumedCapacity;

@interface UADDBBatchGetItemResponse : UADDBResponse

@property (nonatomic, copy) NSDictionary *responses;
@property (nonatomic, copy) NSDictionary *unprocessedKeys;
@property (nonatomic, copy) NSArray *consumedCapacity;

/**
 * Retrieves the NSDictionary for the specified TableName.
**/
- (NSDictionary *)responseForTableName:(NSString *)tableName;

/**
 * Retrieves the UADDBUnprocessedKey for the specified TableName.
**/
- (UADDBUnprocessedKey *)unprocessedKeyForTableName:(NSString *)tableName;

/**
 * Retrieves the UADDBConsumedCapacity at the specified index.
**/
- (UADDBConsumedCapacity *)consumedCapacityAtIndex:(NSUInteger)index;

/**
 * Adds a ConsumedCapacity to the consumedCapacity property.
 *
 * This will initialise consumedCapacity with an empty mutable array if necessary.
**/
- (void)addConsumedCapacity:(UADDBConsumedCapacity *)consumedCapacity;

/**
 * Sets the value of TableName to Response in the responses property.
 *
 * This will initialise responses with an empty mutable dictionary if necessary.
**/
- (void)setResponse:( *)response forTableName:(NSString *)tableName;

/**
 * Sets the value of TableName to UnprocessedKey in the unprocessedKeys property.
 *
 * This will initialise unprocessedKeys with an empty mutable dictionary if necessary.
**/
- (void)setUnprocessedKey:(UADDBUnprocessedKey *)unprocessedKey forTableName:(NSString *)tableName;

@end
