//
//  UAEC2DescribeVPNConnectionsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2VPNConnection;

@interface UAEC2DescribeVPNConnectionsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *vpnConnections;

@end
