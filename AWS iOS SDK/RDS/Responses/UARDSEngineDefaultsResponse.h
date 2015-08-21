//
//  UARDSEngineDefaultsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSResponse.h"

@class UARDSEngineDefaults;

@interface UARDSEngineDefaultsResponse : UARDSResponse

@property (nonatomic, copy) UARDSEngineDefaults *engineDefaults;

@end
