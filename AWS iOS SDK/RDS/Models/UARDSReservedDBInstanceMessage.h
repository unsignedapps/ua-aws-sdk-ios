//
//  UARDSReservedDBInstanceMessage.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSReservedDBInstance;

@interface UARDSReservedDBInstanceMessage : UARDSModel

@property (nonatomic, copy) NSString *marker;
@property (nonatomic, copy) NSArray *reservedDBInstances;

/**
 * Retrieves the UARDSReservedDBInstance at the specified index.
**/
- (UARDSReservedDBInstance *)reservedDBInstanceAtIndex:(NSUInteger)index;

/**
 * Adds a ReservedDBInstance to the reservedDBInstances property.
 *
 * This will initialise reservedDBInstances with an empty mutable array if necessary.
**/
- (void)addReservedDBInstance:(UARDSReservedDBInstance *)reservedDBInstance;

@end
