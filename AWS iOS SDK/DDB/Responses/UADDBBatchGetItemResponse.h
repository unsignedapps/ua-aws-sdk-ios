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

@end
