//
//  UAEC2DescribeVPCClassicLinkResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2VPCClassicLink;

@interface UAEC2DescribeVPCClassicLinkResponse : UAEC2Response

@property (nonatomic, copy) NSArray *vpcs;

/**
 * Retrieves the UAEC2VPCClassicLink at the specified index.
**/
- (UAEC2VPCClassicLink *)vpcAtIndex:(NSUInteger)index;

/**
 * Adds a VPC to the vpcs property.
 *
 * This will initialise vpcs with an empty mutable array if necessary.
**/
- (void)addVPC:(UAEC2VPCClassicLink *)vPC;

@end
