//
//  UARDSDBInstanceMessage.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSDBInstance;

@interface UARDSDBInstanceMessage : UARDSModel

@property (nonatomic, copy) NSString *marker;
@property (nonatomic, copy) NSArray *dBInstances;

/**
 * Retrieves the UARDSDBInstance at the specified index.
**/
- (UARDSDBInstance *)dBInstanceAtIndex:(NSUInteger)index;

/**
 * Adds a DBInstance to the dBInstances property.
 *
 * This will initialise dBInstances with an empty mutable array if necessary.
**/
- (void)addDBInstance:(UARDSDBInstance *)dBInstance;

@end
