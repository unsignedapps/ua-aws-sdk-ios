//
//  UAIAMCreateAccessKeyResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMAccessKey;

@interface UAIAMCreateAccessKeyResponse : UAIAMResponse

@property (nonatomic, copy) UAIAMAccessKey *accessKey;

@end
