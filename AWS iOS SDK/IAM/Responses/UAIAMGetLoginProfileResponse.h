//
//  UAIAMGetLoginProfileResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMLoginProfile;

@interface UAIAMGetLoginProfileResponse : UAIAMResponse

@property (nonatomic, copy) UAIAMLoginProfile *loginProfile;

@end
