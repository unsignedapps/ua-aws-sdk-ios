//
//  UAIAMListMFADevicesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMMFADevice;

@interface UAIAMListMFADevicesResponse : UAIAMResponse

@property (nonatomic, copy) NSArray *mFADevices;
@property (nonatomic) BOOL isTruncated;
@property (nonatomic, copy) NSString *marker;

/**
 * Retrieves the UAIAMMFADevice at the specified index.
**/
- (UAIAMMFADevice *)mFADeviceAtIndex:(NSUInteger)index;

/**
 * Adds a MFADevice to the mFADevices property.
 *
 * This will initialise mFADevices with an empty mutable array if necessary.
**/
- (void)addMFADevice:(UAIAMMFADevice *)mFADevice;

@end
