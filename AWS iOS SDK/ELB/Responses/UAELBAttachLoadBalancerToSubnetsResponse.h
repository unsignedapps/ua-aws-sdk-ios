//
//  UAELBAttachLoadBalancerToSubnetsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@interface UAELBAttachLoadBalancerToSubnetsResponse : UAELBResponse

@property (nonatomic, copy) NSArray *subnets;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)subnetAtIndex:(NSUInteger)index;

/**
 * Adds a Subnet to the subnets property.
 *
 * This will initialise subnets with an empty mutable array if necessary.
**/
- (void)addSubnet:(NSString *)subnet;

@end
