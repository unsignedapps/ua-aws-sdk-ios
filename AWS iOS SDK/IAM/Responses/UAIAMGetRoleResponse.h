//
//  UAIAMGetRoleResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMRole;

@interface UAIAMGetRoleResponse : UAIAMResponse

@property (nonatomic, copy) UAIAMRole *role;

@end
