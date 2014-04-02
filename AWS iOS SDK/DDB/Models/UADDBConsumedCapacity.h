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

@end
