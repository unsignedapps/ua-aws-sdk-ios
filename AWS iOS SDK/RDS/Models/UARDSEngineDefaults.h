//
//  UARDSEngineDefaults.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSParameter;

@interface UARDSEngineDefaults : UARDSModel

@property (nonatomic, copy) NSString *dBParameterGroupFamily;
@property (nonatomic, copy) NSString *marker;
@property (nonatomic, copy) NSArray *parameters;

/**
 * Retrieves the UARDSParameter at the specified index.
**/
- (UARDSParameter *)parameterAtIndex:(NSUInteger)index;

/**
 * Adds a Parameter to the parameters property.
 *
 * This will initialise parameters with an empty mutable array if necessary.
**/
- (void)addParameter:(UARDSParameter *)parameter;

@end
