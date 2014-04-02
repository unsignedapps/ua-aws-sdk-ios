//
//  UAEC2LaunchPermissionModifications.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2LaunchPermission;

@interface UAEC2LaunchPermissionModifications : UAEC2Model

@property (nonatomic, strong) NSMutableArray *add;
@property (nonatomic, strong) NSMutableArray *remove;

/**
 * Retrieves the UAEC2LaunchPermission at the specified index.
**/
- (UAEC2LaunchPermission *)addAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2LaunchPermission at the specified index.
**/
- (UAEC2LaunchPermission *)removeAtIndex:(NSUInteger)index;

@end
