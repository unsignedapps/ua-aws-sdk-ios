//
//  UAELBDeregisterInstancesFromLoadBalancerResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@class UAELBInstance;

@interface UAELBDeregisterInstancesFromLoadBalancerResponse : UAELBResponse

@property (nonatomic, copy) NSArray *instances;

/**
 * Retrieves the UAELBInstance at the specified index.
**/
- (UAELBInstance *)instanceAtIndex:(NSUInteger)index;

/**
 * Adds a Instance to the instances property.
 *
 * This will initialise instances with an empty mutable array if necessary.
**/
- (void)addInstance:(UAELBInstance *)instance;

@end
