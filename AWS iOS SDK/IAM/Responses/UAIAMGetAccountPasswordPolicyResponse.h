//
//  UAIAMGetAccountPasswordPolicyResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMPasswordPolicy;

@interface UAIAMGetAccountPasswordPolicyResponse : UAIAMResponse

@property (nonatomic, copy) UAIAMPasswordPolicy *passwordPolicy;

@end
