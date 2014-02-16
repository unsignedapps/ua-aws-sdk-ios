//
//  UAEC2DescribeImageAttributeResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2LaunchPermission, UAEC2ProductCode, UAEC2KernelID, UAEC2RamdiskID, UAEC2SriovNetSupport, UAEC2BlockDeviceMapping;

@interface UAEC2DescribeImageAttributeResponse : UAEC2Response

@property (nonatomic, copy) NSString *imageID;
@property (nonatomic, copy) NSArray *launchPermissions;
@property (nonatomic, copy) NSArray *productCodes;
@property (nonatomic, copy) UAEC2KernelID *kernelID;
@property (nonatomic, copy) UAEC2RamdiskID *ramdiskID;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, copy) UAEC2SriovNetSupport *sriovNetSupport;
@property (nonatomic, copy) NSArray *blockDeviceMappings;

@end
