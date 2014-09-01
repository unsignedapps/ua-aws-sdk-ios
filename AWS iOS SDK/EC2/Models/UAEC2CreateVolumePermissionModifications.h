//
//  UAEC2CreateVolumePermissionModifications.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2CreateVolumePermission;

@interface UAEC2CreateVolumePermissionModifications : UAEC2Model

@property (nonatomic, strong) NSMutableArray *add;
@property (nonatomic, strong) NSMutableArray *remove;

/**
 * Retrieves the UAEC2CreateVolumePermission at the specified index.
**/
- (UAEC2CreateVolumePermission *)addAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2CreateVolumePermission at the specified index.
**/
- (UAEC2CreateVolumePermission *)removeAtIndex:(NSUInteger)index;

/**
 * Adds a Add to the add property.
 *
 * This will initialise add with an empty mutable array if necessary.
**/
- (void)addAdd:(UAEC2CreateVolumePermission *)add;
/**
 * Adds a Remove to the remove property.
 *
 * This will initialise remove with an empty mutable array if necessary.
**/
- (void)addRemove:(UAEC2CreateVolumePermission *)remove;

@end
