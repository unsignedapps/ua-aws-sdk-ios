//
//  UADDBLocalSecondaryIndex.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBModel.h"

@class UADDBKeySchema, UADDBProjection;

@interface UADDBLocalSecondaryIndex : UADDBModel

@property (nonatomic, copy) NSString *indexName;
@property (nonatomic, strong) NSMutableArray *keySchema;
@property (nonatomic, copy) UADDBProjection *projection;

/**
 * Retrieves the UADDBKeySchema at the specified index.
**/
- (UADDBKeySchema *)keySchemaAtIndex:(NSUInteger)index;

/**
 * Adds a KeySchema to the keySchema property.
 *
 * This will initialise keySchema with an empty mutable array if necessary.
**/
- (void)addKeySchema:(UADDBKeySchema *)keySchema;

@end
