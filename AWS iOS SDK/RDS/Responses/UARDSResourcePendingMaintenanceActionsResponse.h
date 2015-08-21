//
//  UARDSResourcePendingMaintenanceActionsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSResponse.h"

@class UARDSResourcePendingMaintenanceActions;

@interface UARDSResourcePendingMaintenanceActionsResponse : UARDSResponse

@property (nonatomic, copy) UARDSResourcePendingMaintenanceActions *resourcePendingMaintenanceActions;

@end
