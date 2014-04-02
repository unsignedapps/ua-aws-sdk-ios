//
//  UADDBGlobalSecondaryIndex.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBModel.h"

@class UADDBKeySchema, UADDBProjection, UADDBProvisionedThroughput;

@interface UADDBGlobalSecondaryIndex : UADDBModel

@property (nonatomic, copy) NSString *indexName;
@property (nonatomic, strong) NSMutableArray *keySchema;
@property (nonatomic, copy) UADDBProjection *projection;
@property (nonatomic, copy) UADDBProvisionedThroughput *provisionedThroughput;

/**
 * Retrieves the UADDBKeySchema at the specified index.
**/
- (UADDBKeySchema *)keySchemaAtIndex:(NSUInteger)index;

@end
