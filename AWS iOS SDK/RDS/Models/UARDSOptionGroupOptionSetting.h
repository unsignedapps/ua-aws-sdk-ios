//
//  UARDSOptionGroupOptionSetting.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@interface UARDSOptionGroupOptionSetting : UARDSModel

@property (nonatomic, copy) NSString *settingName;
@property (nonatomic, copy) NSString *settingDescription;
@property (nonatomic, copy) NSString *defaultValue;
@property (nonatomic, copy) NSString *applyType;
@property (nonatomic, copy) NSString *allowedValues;
@property (nonatomic) BOOL isModifiable;

@end
