//
//  UAASDescribeAdjustmentTypesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASAdjustmentType;

@interface UAASDescribeAdjustmentTypesResponse : UAASResponse

@property (nonatomic, copy) NSArray *adjustmentTypes;

/**
 * Retrieves the UAASAdjustmentType at the specified index.
**/
- (UAASAdjustmentType *)adjustmentTypeAtIndex:(NSUInteger)index;

/**
 * Adds a AdjustmentType to the adjustmentTypes property.
 *
 * This will initialise adjustmentTypes with an empty mutable array if necessary.
**/
- (void)addAdjustmentType:(UAASAdjustmentType *)adjustmentType;

@end
