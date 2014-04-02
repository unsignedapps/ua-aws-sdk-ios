//
//  UAASDescribeScalingProcessTypesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASProcessType;

@interface UAASDescribeScalingProcessTypesResponse : UAASResponse

@property (nonatomic, copy) NSArray *processes;

/**
 * Retrieves the UAASProcessType at the specified index.
**/
- (UAASProcessType *)processAtIndex:(NSUInteger)index;

@end
