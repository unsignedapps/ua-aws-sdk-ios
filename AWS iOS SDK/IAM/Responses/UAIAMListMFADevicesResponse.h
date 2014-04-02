//
//  UAIAMListMFADevicesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

@end
