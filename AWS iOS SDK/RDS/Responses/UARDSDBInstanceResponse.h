//
//  UARDSDBInstanceResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSResponse.h"

@class UARDSDBInstance;

@interface UARDSDBInstanceResponse : UARDSResponse

@property (nonatomic, copy) UARDSDBInstance *dBInstance;

@end
