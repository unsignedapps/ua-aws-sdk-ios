//
//  UAIAMGetInstanceProfileResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMInstanceProfile;

@interface UAIAMGetInstanceProfileResponse : UAIAMResponse

@property (nonatomic, copy) UAIAMInstanceProfile *instanceProfile;

@end
