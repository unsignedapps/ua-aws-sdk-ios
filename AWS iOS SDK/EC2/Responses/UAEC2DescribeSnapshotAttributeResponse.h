//
//  UAEC2DescribeSnapshotAttributeResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2CreateVolumePermission, UAEC2ProductCode;

@interface UAEC2DescribeSnapshotAttributeResponse : UAEC2Response

@property (nonatomic, copy) NSString *snapshotID;
@property (nonatomic, copy) NSArray *createVolumePermissions;
@property (nonatomic, copy) NSArray *productCodes;

/**
 * Retrieves the UAEC2CreateVolumePermission at the specified index.
**/
- (UAEC2CreateVolumePermission *)createVolumePermissionAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2ProductCode at the specified index.
**/
- (UAEC2ProductCode *)productCodeAtIndex:(NSUInteger)index;

/**
 * Adds a CreateVolumePermission to the createVolumePermissions property.
 *
 * This will initialise createVolumePermissions with an empty mutable array if necessary.
**/
- (void)addCreateVolumePermission:(UAEC2CreateVolumePermission *)createVolumePermission;
/**
 * Adds a ProductCode to the productCodes property.
 *
 * This will initialise productCodes with an empty mutable array if necessary.
**/
- (void)addProductCode:(UAEC2ProductCode *)productCode;

@end
