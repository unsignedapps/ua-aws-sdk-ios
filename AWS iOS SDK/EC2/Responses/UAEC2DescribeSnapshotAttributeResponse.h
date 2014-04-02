//
//  UAEC2DescribeSnapshotAttributeResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

@end
