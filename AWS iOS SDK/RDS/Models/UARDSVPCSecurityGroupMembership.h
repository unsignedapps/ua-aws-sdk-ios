//
//  UARDSVPCSecurityGroupMembership.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@interface UARDSVPCSecurityGroupMembership : UARDSModel

@property (nonatomic, copy) NSString *vpcSecurityGroupID;
@property (nonatomic, copy) NSString *status;

@end
