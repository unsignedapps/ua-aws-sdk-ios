//
//  UARDSPendingMaintenanceActionDetail.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@interface UARDSPendingMaintenanceActionDetail : UARDSModel

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSDate *autoAppliedAfterDate;
@property (nonatomic, copy) NSDate *forcedApplyDate;
@property (nonatomic, copy) NSString *optInStatus;
@property (nonatomic, copy) NSDate *currentApplyDate;
@property (nonatomic, copy) NSString *description;

@end
