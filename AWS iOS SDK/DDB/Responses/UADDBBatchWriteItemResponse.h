//
//  UADDBBatchWriteItemResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBResponse.h"

@class UADDBConsumedCapacity;

@interface UADDBBatchWriteItemResponse : UADDBResponse

@property (nonatomic, copy) NSDictionary *unprocessedItems;
@property (nonatomic, copy) NSDictionary *itemCollectionMetrics;
@property (nonatomic, copy) NSArray *consumedCapacity;

/**
 * Retrieves the NSArray for the specified TableName.
**/
- (NSArray *)unprocessedItemForTableName:(NSString *)tableName;

/**
 * Retrieves the NSArray for the specified TableName.
**/
- (NSArray *)itemCollectionMetricForTableName:(NSString *)tableName;

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
 * Sets the value of TableName to UnprocessedItem in the unprocessedItems property.
 *
 * This will initialise unprocessedItems with an empty mutable dictionary if necessary.
**/
- (void)setUnprocessedItem:(NSArray *)unprocessedItem forTableName:(NSString *)tableName;

/**
 * Sets the value of TableName to ItemCollectionMetric in the itemCollectionMetrics property.
 *
 * This will initialise itemCollectionMetrics with an empty mutable dictionary if necessary.
**/
- (void)setItemCollectionMetric:(NSArray *)itemCollectionMetric forTableName:(NSString *)tableName;

@end
