//
//  UAASBlockDeviceMapping.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASModel.h"
#import "UAAWSBlockDeviceMapping.h"
#import "UAASEBSBlockDevice.h"

@class UAASEBSBlockDevice;

@interface UAASBlockDeviceMapping : UAASModel <UAAWSBlockDeviceMapping>

@property (nonatomic, copy) NSString *virtualName;
@property (nonatomic, copy) NSString *deviceName;
@property (nonatomic, copy) UAASEBSBlockDevice *ebs;
@property (nonatomic) BOOL noDevice;

@end
