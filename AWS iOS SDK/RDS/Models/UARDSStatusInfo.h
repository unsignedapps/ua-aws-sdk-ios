//
//  UARDSStatusInfo.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@interface UARDSStatusInfo : UARDSModel

@property (nonatomic, copy) NSString *statusType;
@property (nonatomic) BOOL normal;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSString *message;

@end
