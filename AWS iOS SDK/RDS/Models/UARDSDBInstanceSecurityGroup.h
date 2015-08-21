//
//  UARDSDBInstanceSecurityGroup.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@interface UARDSDBInstanceSecurityGroup : UARDSModel

@property (nonatomic, copy) NSString *dBSecurityGroupName;
@property (nonatomic, copy) NSString *status;

@end
