//
//  UARDSAccountQuota.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@interface UARDSAccountQuota : UARDSModel

@property (nonatomic, copy) NSString *accountQuotaName;
@property (nonatomic, strong) NSNumber *used;
@property (nonatomic, strong) NSNumber *max;

@end
