//
//  UAASDescribeAutoScalingInstancesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASAutoScalingInstanceDetails;

@interface UAASDescribeAutoScalingInstancesResponse : UAASResponse

@property (nonatomic, copy) NSArray *autoScalingInstances;
@property (nonatomic, copy) NSString *nextToken;

/**
 * Retrieves the UAASAutoScalingInstanceDetails at the specified index.
**/
- (UAASAutoScalingInstanceDetails *)autoScalingInstancesAtIndex:(NSUInteger)index;

/**
 * Adds a AutoScalingInstances to the autoScalingInstances property.
 *
 * This will initialise autoScalingInstances with an empty mutable array if necessary.
**/
- (void)addAutoScalingInstances:(UAASAutoScalingInstanceDetails *)autoScalingInstances;

@end
