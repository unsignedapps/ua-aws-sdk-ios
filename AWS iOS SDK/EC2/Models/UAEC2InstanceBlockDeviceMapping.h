//
//  UAEC2InstanceBlockDeviceMapping.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2EBSInstanceBlockDevice;

@interface UAEC2InstanceBlockDeviceMapping : UAEC2Model

@property (nonatomic, copy) NSString *deviceName;
@property (nonatomic, copy) UAEC2EBSInstanceBlockDevice *ebs;

@end
