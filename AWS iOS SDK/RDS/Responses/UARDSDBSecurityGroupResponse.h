//
//  UARDSDBSecurityGroupResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSResponse.h"

@class UARDSDBSecurityGroup;

@interface UARDSDBSecurityGroupResponse : UARDSResponse

@property (nonatomic, copy) UARDSDBSecurityGroup *dBSecurityGroup;

@end
