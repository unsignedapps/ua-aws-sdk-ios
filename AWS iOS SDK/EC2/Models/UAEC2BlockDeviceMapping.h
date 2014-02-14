//
//  UAEC2BlockDeviceMapping.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2EBSBlockDevice;

@interface UAEC2BlockDeviceMapping : UAEC2Model

@property (nonatomic, copy) NSString *virtualName;
@property (nonatomic, copy) NSString *deviceName;
@property (nonatomic, copy) UAEC2EBSBlockDevice *ebs;
@property (nonatomic, copy) NSString *noDevice;

@end
