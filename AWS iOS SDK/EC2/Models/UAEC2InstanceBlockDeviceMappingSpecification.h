//
//  UAEC2InstanceBlockDeviceMappingSpecification.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2EBSInstanceBlockDeviceSpecification;

@interface UAEC2InstanceBlockDeviceMappingSpecification : UAEC2Model

@property (nonatomic, copy) NSString *deviceName;
@property (nonatomic, copy) UAEC2EBSInstanceBlockDeviceSpecification *ebs;
@property (nonatomic, copy) NSString *virtualName;
@property (nonatomic, copy) NSString *noDevice;

@end
