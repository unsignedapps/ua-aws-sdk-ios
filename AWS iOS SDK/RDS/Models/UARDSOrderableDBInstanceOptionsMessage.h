//
//  UARDSOrderableDBInstanceOptionsMessage.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSOrderableDBInstanceOption;

@interface UARDSOrderableDBInstanceOptionsMessage : UARDSModel

@property (nonatomic, copy) NSArray *orderableDBInstanceOptions;
@property (nonatomic, copy) NSString *marker;

/**
 * Retrieves the UARDSOrderableDBInstanceOption at the specified index.
**/
- (UARDSOrderableDBInstanceOption *)orderableDBInstanceOptionAtIndex:(NSUInteger)index;

/**
 * Adds a OrderableDBInstanceOption to the orderableDBInstanceOptions property.
 *
 * This will initialise orderableDBInstanceOptions with an empty mutable array if necessary.
**/
- (void)addOrderableDBInstanceOption:(UARDSOrderableDBInstanceOption *)orderableDBInstanceOption;

@end
