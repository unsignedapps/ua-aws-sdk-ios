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

@end
