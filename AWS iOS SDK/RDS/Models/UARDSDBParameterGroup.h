//
//  UARDSDBParameterGroup.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@interface UARDSDBParameterGroup : UARDSModel

@property (nonatomic, copy) NSString *dBParameterGroupName;
@property (nonatomic, copy) NSString *dBParameterGroupFamily;
@property (nonatomic, copy) NSString *description;

@end
