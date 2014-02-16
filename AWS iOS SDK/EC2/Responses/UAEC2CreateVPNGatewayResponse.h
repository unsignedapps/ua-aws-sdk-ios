//
//  UAEC2CreateVPNGatewayResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2VPNGateway;

@interface UAEC2CreateVPNGatewayResponse : UAEC2Response

@property (nonatomic, copy) UAEC2VPNGateway *vpnGateway;

@end
