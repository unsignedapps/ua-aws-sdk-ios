//
//  UAEC2DescribeVPCsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2VPC;

@interface UAEC2DescribeVPCsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *vpcs;

/**
 * Retrieves the UAEC2VPC at the specified index.
**/
- (UAEC2VPC *)vpcAtIndex:(NSUInteger)index;

/**
 * Adds a VPC to the vpcs property.
 *
 * This will initialise vpcs with an empty mutable array if necessary.
**/
- (void)addVPC:(UAEC2VPC *)vPC;

@end
