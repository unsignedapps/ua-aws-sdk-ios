//
//  UAIAMGetUserResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMUser;

@interface UAIAMGetUserResponse : UAIAMResponse

@property (nonatomic, copy) UAIAMUser *user;

@end
