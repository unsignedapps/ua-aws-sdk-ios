//
//  UAIAMCreateInstanceProfileResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMInstanceProfile;

@interface UAIAMCreateInstanceProfileResponse : UAIAMResponse

@property (nonatomic, copy) UAIAMInstanceProfile *instanceProfile;

@end
