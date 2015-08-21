//
//  UARDSPendingMaintenanceActionsMessage.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSPendingMaintenanceAction;

@interface UARDSPendingMaintenanceActionsMessage : UARDSModel

@property (nonatomic, copy) NSArray *pendingMaintenanceActions;
@property (nonatomic, copy) NSString *marker;

/**
 * Retrieves the UARDSPendingMaintenanceAction at the specified index.
**/
- (UARDSPendingMaintenanceAction *)pendingMaintenanceActionAtIndex:(NSUInteger)index;

/**
 * Adds a PendingMaintenanceAction to the pendingMaintenanceActions property.
 *
 * This will initialise pendingMaintenanceActions with an empty mutable array if necessary.
**/
- (void)addPendingMaintenanceAction:(UARDSPendingMaintenanceAction *)pendingMaintenanceAction;

@end
