//
//  UAEC2DescribeVPNGatewaysResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2VPNGateway;

@interface UAEC2DescribeVPNGatewaysResponse : UAEC2Response

@property (nonatomic, copy) NSArray *vpnGateways;

@end
