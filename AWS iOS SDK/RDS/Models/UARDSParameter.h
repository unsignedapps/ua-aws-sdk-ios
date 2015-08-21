//
//  UARDSParameter.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@interface UARDSParameter : UARDSModel

@property (nonatomic, copy) NSString *parameterName;
@property (nonatomic, copy) NSString *parameterValue;
@property (nonatomic, copy) NSString *description;
@property (nonatomic, copy) NSString *source;
@property (nonatomic, copy) NSString *applyType;
@property (nonatomic, copy) NSString *dataType;
@property (nonatomic, copy) NSString *allowedValues;
@property (nonatomic) BOOL isModifiable;
@property (nonatomic, copy) NSString *minimumEngineVersion;
@property (nonatomic, copy) NSString *applyMethod;

@end
