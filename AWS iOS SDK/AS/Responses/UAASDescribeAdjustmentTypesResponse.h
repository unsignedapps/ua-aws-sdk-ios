//
//  UAASDescribeAdjustmentTypesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASAdjustmentType;

@interface UAASDescribeAdjustmentTypesResponse : UAASResponse

@property (nonatomic, copy) NSArray *adjustmentTypes;

@end
