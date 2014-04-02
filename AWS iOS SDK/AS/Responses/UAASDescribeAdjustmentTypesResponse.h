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

@end
