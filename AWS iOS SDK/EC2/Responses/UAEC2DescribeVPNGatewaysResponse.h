//
//  UAEC2DescribeVPNGatewaysResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2VPNGateway;

@interface UAEC2DescribeVPNGatewaysResponse : UAEC2Response

@property (nonatomic, copy) NSArray *vpnGateways;

/**
 * Retrieves the UAEC2VPNGateway at the specified index.
**/
- (UAEC2VPNGateway *)vpnGatewayAtIndex:(NSUInteger)index;

/**
 * Adds a VPNGateway to the vpnGateways property.
 *
 * This will initialise vpnGateways with an empty mutable array if necessary.
**/
- (void)addVPNGateway:(UAEC2VPNGateway *)vPNGateway;

@end
