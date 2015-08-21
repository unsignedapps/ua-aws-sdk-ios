//
//  UARDSDBInstanceParameterGroup.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@interface UARDSDBInstanceParameterGroup : UARDSModel

@property (nonatomic, copy) NSString *dBParameterGroupName;
@property (nonatomic, copy) NSString *parameterApplyStatus;

@end
