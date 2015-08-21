//
//  UARDSDBEngineVersionMessage.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSDBEngineVersion;

@interface UARDSDBEngineVersionMessage : UARDSModel

@property (nonatomic, copy) NSString *marker;
@property (nonatomic, copy) NSArray *dBEngineVersions;

/**
 * Retrieves the UARDSDBEngineVersion at the specified index.
**/
- (UARDSDBEngineVersion *)dBEngineVersionAtIndex:(NSUInteger)index;

/**
 * Adds a DBEngineVersion to the dBEngineVersions property.
 *
 * This will initialise dBEngineVersions with an empty mutable array if necessary.
**/
- (void)addDBEngineVersion:(UARDSDBEngineVersion *)dBEngineVersion;

@end
