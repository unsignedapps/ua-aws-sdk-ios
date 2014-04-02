//
//  UADDBLocalSecondaryIndexDescription.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBModel.h"

@class UADDBKeySchema, UADDBProjection;

@interface UADDBLocalSecondaryIndexDescription : UADDBModel

@property (nonatomic, copy) NSString *indexName;
@property (nonatomic, copy) NSArray *keySchema;
@property (nonatomic, copy) UADDBProjection *projection;
@property (nonatomic, strong) NSNumber *indexSizeBytes;
@property (nonatomic, strong) NSNumber *itemCount;

/**
 * Retrieves the UADDBKeySchema at the specified index.
**/
- (UADDBKeySchema *)keySchemaAtIndex:(NSUInteger)index;

@end
