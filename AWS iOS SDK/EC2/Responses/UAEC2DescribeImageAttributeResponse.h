//
//  UAEC2DescribeImageAttributeResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
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

/**
 * Retrieves the UAEC2LaunchPermission at the specified index.
**/
- (UAEC2LaunchPermission *)launchPermissionAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2ProductCode at the specified index.
**/
- (UAEC2ProductCode *)productCodeAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2BlockDeviceMapping at the specified index.
**/
- (UAEC2BlockDeviceMapping *)blockDeviceMappingAtIndex:(NSUInteger)index;

/**
 * Adds a LaunchPermission to the launchPermissions property.
 *
 * This will initialise launchPermissions with an empty mutable array if necessary.
**/
- (void)addLaunchPermission:(UAEC2LaunchPermission *)launchPermission;
/**
 * Adds a ProductCode to the productCodes property.
 *
 * This will initialise productCodes with an empty mutable array if necessary.
**/
- (void)addProductCode:(UAEC2ProductCode *)productCode;
/**
 * Adds a BlockDeviceMapping to the blockDeviceMappings property.
 *
 * This will initialise blockDeviceMappings with an empty mutable array if necessary.
**/
- (void)addBlockDeviceMapping:(UAEC2BlockDeviceMapping *)blockDeviceMapping;

@end
