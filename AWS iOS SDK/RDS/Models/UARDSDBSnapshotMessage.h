//
//  UARDSDBSnapshotMessage.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSDBSnapshot;

@interface UARDSDBSnapshotMessage : UARDSModel

@property (nonatomic, copy) NSString *marker;
@property (nonatomic, copy) NSArray *dBSnapshots;

/**
 * Retrieves the UARDSDBSnapshot at the specified index.
**/
- (UARDSDBSnapshot *)dBSnapshotAtIndex:(NSUInteger)index;

/**
 * Adds a DBSnapshot to the dBSnapshots property.
 *
 * This will initialise dBSnapshots with an empty mutable array if necessary.
**/
- (void)addDBSnapshot:(UARDSDBSnapshot *)dBSnapshot;

@end
