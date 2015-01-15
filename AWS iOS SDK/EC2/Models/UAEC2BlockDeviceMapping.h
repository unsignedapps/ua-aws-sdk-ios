//
//  UAEC2BlockDeviceMapping.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"
#import "UAAWSBlockDeviceMapping.h"
#import "UAEC2EBSBlockDevice.h"

@class UAEC2EBSBlockDevice;

@interface UAEC2BlockDeviceMapping : UAEC2Model <UAAWSBlockDeviceMapping>

@property (nonatomic, copy) NSString *virtualName;
@property (nonatomic, copy) NSString *deviceName;
@property (nonatomic, copy) UAEC2EBSBlockDevice *ebs;
@property (nonatomic) BOOL noDevice;

@end
