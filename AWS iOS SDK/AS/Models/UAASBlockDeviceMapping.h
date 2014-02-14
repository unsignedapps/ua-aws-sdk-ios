//
//  UAASBlockDeviceMapping.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASModel.h"

@class UAASEBSBlockDevice;

@interface UAASBlockDeviceMapping : UAASModel

@property (nonatomic, copy) NSString *virtualName;
@property (nonatomic, copy) NSString *deviceName;
@property (nonatomic, copy) UAASEBSBlockDevice *ebs;
@property (nonatomic) BOOL noDevice;

@end
