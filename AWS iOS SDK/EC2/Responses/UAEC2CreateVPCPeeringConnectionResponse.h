//
//  UAEC2CreateVPCPeeringConnectionResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2VPCPeeringConnection;

@interface UAEC2CreateVPCPeeringConnectionResponse : UAEC2Response

@property (nonatomic, copy) UAEC2VPCPeeringConnection *vpcPeeringConnection;

@end
