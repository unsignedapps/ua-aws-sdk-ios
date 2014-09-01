//
//  UAELBDescribeLoadBalancersResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@class UAELBLoadBalancerDescription;

@interface UAELBDescribeLoadBalancersResponse : UAELBResponse

@property (nonatomic, copy) NSArray *loadBalancerDescriptions;
@property (nonatomic, copy) NSString *nextMarker;

/**
 * Retrieves the UAELBLoadBalancerDescription at the specified index.
**/
- (UAELBLoadBalancerDescription *)loadBalancerDescriptionAtIndex:(NSUInteger)index;

/**
 * Adds a LoadBalancerDescription to the loadBalancerDescriptions property.
 *
 * This will initialise loadBalancerDescriptions with an empty mutable array if necessary.
**/
- (void)addLoadBalancerDescription:(UAELBLoadBalancerDescription *)loadBalancerDescription;

@end
