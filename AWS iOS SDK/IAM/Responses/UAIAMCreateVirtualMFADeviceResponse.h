//
//  UAIAMCreateVirtualMFADeviceResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMVirtualMFADevice;

@interface UAIAMCreateVirtualMFADeviceResponse : UAIAMResponse

@property (nonatomic, copy) UAIAMVirtualMFADevice *virtualMFADevice;

@end
