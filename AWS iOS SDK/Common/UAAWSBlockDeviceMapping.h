//
//  UAAWSBlockDeviceMapping.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

@import Foundation;
#import "UAAWSEBSBlockDevice.h"

@protocol UAAWSBlockDeviceMapping <NSObject>

@property (nonatomic, copy) NSString *virtualName;
@property (nonatomic, copy) NSString *deviceName;
@property (nonatomic, copy) id<UAAWSEBSBlockDevice> ebs;
@property (nonatomic) BOOL noDevice;

@end
