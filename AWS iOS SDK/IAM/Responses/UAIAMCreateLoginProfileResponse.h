//
//  UAIAMCreateLoginProfileResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMLoginProfile;

@interface UAIAMCreateLoginProfileResponse : UAIAMResponse

@property (nonatomic, copy) UAIAMLoginProfile *loginProfile;

@end
