//
//  UARDSRecurringCharge.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@interface UARDSRecurringCharge : UARDSModel

@property (nonatomic, strong) NSNumber *recurringChargeAmount;
@property (nonatomic, copy) NSString *recurringChargeFrequency;

@end
