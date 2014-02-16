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

@end
