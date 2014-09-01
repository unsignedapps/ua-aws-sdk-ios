//
//  UAEC2DescribeVPCPeeringConnectionsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2VPCPeeringConnection;

@interface UAEC2DescribeVPCPeeringConnectionsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *vpcPeeringConnections;

/**
 * Retrieves the UAEC2VPCPeeringConnection at the specified index.
**/
- (UAEC2VPCPeeringConnection *)vpcPeeringConnectionAtIndex:(NSUInteger)index;

/**
 * Adds a VPCPeeringConnection to the vpcPeeringConnections property.
 *
 * This will initialise vpcPeeringConnections with an empty mutable array if necessary.
**/
- (void)addVPCPeeringConnection:(UAEC2VPCPeeringConnection *)vPCPeeringConnection;

@end
