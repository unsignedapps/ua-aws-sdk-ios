//
//  UAEC2LaunchPermissionModifications.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2LaunchPermission;

@interface UAEC2LaunchPermissionModifications : UAEC2Model

@property (nonatomic, strong) NSMutableArray *add;
@property (nonatomic, strong) NSMutableArray *remove;

@end
