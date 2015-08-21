//
//  UARDSDBParameterGroupResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSResponse.h"

@class UARDSDBParameterGroup;

@interface UARDSDBParameterGroupResponse : UARDSResponse

@property (nonatomic, copy) UARDSDBParameterGroup *dBParameterGroup;

@end
