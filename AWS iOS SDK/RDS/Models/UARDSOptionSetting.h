//
//  UARDSOptionSetting.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@interface UARDSOptionSetting : UARDSModel

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *value;
@property (nonatomic, copy) NSString *defaultValue;
@property (nonatomic, copy) NSString *description;
@property (nonatomic, copy) NSString *applyType;
@property (nonatomic, copy) NSString *dataType;
@property (nonatomic, copy) NSString *allowedValues;
@property (nonatomic) BOOL isModifiable;
@property (nonatomic) BOOL isCollection;

@end
