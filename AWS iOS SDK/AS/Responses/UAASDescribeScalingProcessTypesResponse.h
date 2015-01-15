//
//  UAASDescribeScalingProcessTypesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
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

/**
 * Adds a Process to the processes property.
 *
 * This will initialise processes with an empty mutable array if necessary.
**/
- (void)addProcess:(UAASProcessType *)process;

@end
