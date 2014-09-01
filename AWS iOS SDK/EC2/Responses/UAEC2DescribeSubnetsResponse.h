//
//  UAEC2DescribeSubnetsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2Subnet;

@interface UAEC2DescribeSubnetsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *subnets;

/**
 * Retrieves the UAEC2Subnet at the specified index.
**/
- (UAEC2Subnet *)subnetAtIndex:(NSUInteger)index;

/**
 * Adds a Subnet to the subnets property.
 *
 * This will initialise subnets with an empty mutable array if necessary.
**/
- (void)addSubnet:(UAEC2Subnet *)subnet;

@end
