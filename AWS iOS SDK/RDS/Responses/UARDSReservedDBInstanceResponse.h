//
//  UARDSReservedDBInstanceResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSResponse.h"

@class UARDSReservedDBInstance;

@interface UARDSReservedDBInstanceResponse : UARDSResponse

@property (nonatomic, copy) UARDSReservedDBInstance *reservedDBInstance;

@end
