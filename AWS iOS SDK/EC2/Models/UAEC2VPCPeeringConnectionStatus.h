//
//  UAEC2VPCPeeringConnectionStatus.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2VPCPeeringConnectionStatus : UAEC2Model

@property (nonatomic) UAEC2VPCPeeringConnectionState code;
@property (nonatomic, copy) NSString *message;

@end
