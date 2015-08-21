//
//  UARDSReservedDBInstancesOfferingMessage.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSReservedDBInstancesOffering;

@interface UARDSReservedDBInstancesOfferingMessage : UARDSModel

@property (nonatomic, copy) NSString *marker;
@property (nonatomic, copy) NSArray *reservedDBInstancesOfferings;

/**
 * Retrieves the UARDSReservedDBInstancesOffering at the specified index.
**/
- (UARDSReservedDBInstancesOffering *)reservedDBInstancesOfferingAtIndex:(NSUInteger)index;

/**
 * Adds a ReservedDBInstancesOffering to the reservedDBInstancesOfferings property.
 *
 * This will initialise reservedDBInstancesOfferings with an empty mutable array if necessary.
**/
- (void)addReservedDBInstancesOffering:(UARDSReservedDBInstancesOffering *)reservedDBInstancesOffering;

@end
