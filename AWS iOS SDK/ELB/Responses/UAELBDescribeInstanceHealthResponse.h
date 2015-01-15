//
//  UAELBDescribeInstanceHealthResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@class UAELBInstanceStateDetails;

@interface UAELBDescribeInstanceHealthResponse : UAELBResponse

@property (nonatomic, copy) NSArray *instanceStates;

/**
 * Retrieves the UAELBInstanceStateDetails at the specified index.
**/
- (UAELBInstanceStateDetails *)instanceStateAtIndex:(NSUInteger)index;

/**
 * Adds a InstanceState to the instanceStates property.
 *
 * This will initialise instanceStates with an empty mutable array if necessary.
**/
- (void)addInstanceState:(UAELBInstanceStateDetails *)instanceState;

@end
