//
//  UARDSReservedDBInstancesOffering.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSRecurringCharge;

@interface UARDSReservedDBInstancesOffering : UARDSModel

@property (nonatomic, copy) NSString *reservedDBInstancesOfferingID;
@property (nonatomic, copy) NSString *dBInstanceClass;
@property (nonatomic, strong) NSNumber *duration;
@property (nonatomic, strong) NSNumber *fixedPrice;
@property (nonatomic, strong) NSNumber *usagePrice;
@property (nonatomic, copy) NSString *currencyCode;
@property (nonatomic, copy) NSString *productDescription;
@property (nonatomic) UARDSReservedDBInstanceOfferingType offeringType;
@property (nonatomic) BOOL multiAZ;
@property (nonatomic, copy) NSArray *recurringCharges;

/**
 * Retrieves the UARDSRecurringCharge at the specified index.
**/
- (UARDSRecurringCharge *)recurringChargeAtIndex:(NSUInteger)index;

/**
 * Adds a RecurringCharge to the recurringCharges property.
 *
 * This will initialise recurringCharges with an empty mutable array if necessary.
**/
- (void)addRecurringCharge:(UARDSRecurringCharge *)recurringCharge;

@end
