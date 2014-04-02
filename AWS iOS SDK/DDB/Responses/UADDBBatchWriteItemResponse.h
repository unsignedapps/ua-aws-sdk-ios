//
//  UADDBBatchWriteItemResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

@end
