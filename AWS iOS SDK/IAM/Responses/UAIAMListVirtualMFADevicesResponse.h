//
//  UAIAMListVirtualMFADevicesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMVirtualMFADevice;

@interface UAIAMListVirtualMFADevicesResponse : UAIAMResponse

@property (nonatomic, copy) NSArray *virtualMFADevices;
@property (nonatomic) BOOL isTruncated;
@property (nonatomic, copy) NSString *marker;

/**
 * Retrieves the UAIAMVirtualMFADevice at the specified index.
**/
- (UAIAMVirtualMFADevice *)virtualMFADeviceAtIndex:(NSUInteger)index;

/**
 * Adds a VirtualMFADevice to the virtualMFADevices property.
 *
 * This will initialise virtualMFADevices with an empty mutable array if necessary.
**/
- (void)addVirtualMFADevice:(UAIAMVirtualMFADevice *)virtualMFADevice;

@end
