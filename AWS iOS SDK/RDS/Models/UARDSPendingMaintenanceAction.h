//
//  UARDSPendingMaintenanceAction.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSPendingMaintenanceActionDetail;

@interface UARDSPendingMaintenanceAction : UARDSModel

@property (nonatomic, copy) NSString *resourceIdentifier;
@property (nonatomic, copy) NSArray *pendingMaintenanceActionDetails;

/**
 * Retrieves the UARDSPendingMaintenanceActionDetail at the specified index.
**/
- (UARDSPendingMaintenanceActionDetail *)pendingMaintenanceActionDetailAtIndex:(NSUInteger)index;

/**
 * Adds a PendingMaintenanceActionDetail to the pendingMaintenanceActionDetails property.
 *
 * This will initialise pendingMaintenanceActionDetails with an empty mutable array if necessary.
**/
- (void)addPendingMaintenanceActionDetail:(UARDSPendingMaintenanceActionDetail *)pendingMaintenanceActionDetail;

@end
