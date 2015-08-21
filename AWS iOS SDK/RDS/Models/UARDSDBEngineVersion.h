//
//  UARDSDBEngineVersion.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSDefaultCharacterSet, UARDSSupportedCharacterSet;

@interface UARDSDBEngineVersion : UARDSModel

@property (nonatomic) UARDSEngine engine;
@property (nonatomic, copy) NSString *engineVersion;
@property (nonatomic, copy) NSString *dBParameterGroupFamily;
@property (nonatomic, copy) NSString *dBEngineDescription;
@property (nonatomic, copy) NSString *dBEngineVersionDescription;
@property (nonatomic, copy) UARDSDefaultCharacterSet *defaultCharacterSet;
@property (nonatomic, copy) NSArray *supportedCharacterSets;

/**
 * Retrieves the UARDSSupportedCharacterSet at the specified index.
**/
- (UARDSSupportedCharacterSet *)supportedCharacterSetAtIndex:(NSUInteger)index;

/**
 * Adds a SupportedCharacterSet to the supportedCharacterSets property.
 *
 * This will initialise supportedCharacterSets with an empty mutable array if necessary.
**/
- (void)addSupportedCharacterSet:(UARDSSupportedCharacterSet *)supportedCharacterSet;

@end
