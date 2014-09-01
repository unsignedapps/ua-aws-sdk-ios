//
//  UADDBConsumedCapacity.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBModel.h"

@class UADDBCapacity;

@interface UADDBConsumedCapacity : UADDBModel

@property (nonatomic, copy) NSString *tableName;
@property (nonatomic, strong) NSNumber *capacityUnits;
@property (nonatomic, copy) UADDBCapacity *table;
@property (nonatomic, copy) NSDictionary *localSecondaryIndexes;
@property (nonatomic, copy) NSDictionary *globalSecondaryIndexes;

/**
 * Retrieves the UADDBCapacity for the specified IndexName.
**/
- (UADDBCapacity *)localSecondaryIndexForIndexName:(NSString *)indexName;

/**
 * Retrieves the UADDBCapacity for the specified IndexName.
**/
- (UADDBCapacity *)globalSecondaryIndexForIndexName:(NSString *)indexName;

/**
 * Sets the value of IndexName to LocalSecondaryIndex in the localSecondaryIndexes property.
 *
 * This will initialise localSecondaryIndexes with an empty mutable dictionary if necessary.
**/
- (void)setLocalSecondaryIndex:(UADDBCapacity *)localSecondaryIndex forIndexName:(NSString *)indexName;

/**
 * Sets the value of IndexName to GlobalSecondaryIndex in the globalSecondaryIndexes property.
 *
 * This will initialise globalSecondaryIndexes with an empty mutable dictionary if necessary.
**/
- (void)setGlobalSecondaryIndex:(UADDBCapacity *)globalSecondaryIndex forIndexName:(NSString *)indexName;

@end
