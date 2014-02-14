//
//  UAEC2CreateVPNConnectionResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2VPNConnection;

@interface UAEC2CreateVPNConnectionResponse : UAEC2Response

@property (nonatomic, copy) UAEC2VPNConnection *vpnConnection;

@end
