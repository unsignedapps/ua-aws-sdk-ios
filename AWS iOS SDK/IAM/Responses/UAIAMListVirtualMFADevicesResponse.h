//
//  UAIAMListVirtualMFADevicesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMVirtualMFADevice;

@interface UAIAMListVirtualMFADevicesResponse : UAIAMResponse

@property (nonatomic, copy) NSArray *virtualMFADevices;
@property (nonatomic) BOOL isTruncated;
@property (nonatomic, copy) NSString *marker;

@end
