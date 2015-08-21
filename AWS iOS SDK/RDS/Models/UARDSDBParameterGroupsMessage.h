//
//  UARDSDBParameterGroupsMessage.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSDBParameterGroup;

@interface UARDSDBParameterGroupsMessage : UARDSModel

@property (nonatomic, copy) NSString *marker;
@property (nonatomic, copy) NSArray *dBParameterGroups;

/**
 * Retrieves the UARDSDBParameterGroup at the specified index.
**/
- (UARDSDBParameterGroup *)dBParameterGroupAtIndex:(NSUInteger)index;

/**
 * Adds a DBParameterGroup to the dBParameterGroups property.
 *
 * This will initialise dBParameterGroups with an empty mutable array if necessary.
**/
- (void)addDBParameterGroup:(UARDSDBParameterGroup *)dBParameterGroup;

@end
