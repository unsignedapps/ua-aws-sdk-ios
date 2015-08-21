//
//  UARDSDBSnapshotResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSResponse.h"

@class UARDSDBSnapshot;

@interface UARDSDBSnapshotResponse : UARDSResponse

@property (nonatomic, copy) UARDSDBSnapshot *dBSnapshot;

@end
