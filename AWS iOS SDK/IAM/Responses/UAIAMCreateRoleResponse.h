//
//  UAIAMCreateRoleResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMRole;

@interface UAIAMCreateRoleResponse : UAIAMResponse

@property (nonatomic, copy) UAIAMRole *role;

@end
