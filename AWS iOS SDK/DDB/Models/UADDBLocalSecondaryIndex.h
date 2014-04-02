//
//  UADDBLocalSecondaryIndex.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

@end
