//
//  UAEC2DescribeSnapshotAttributeResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2CreateVolumePermission, UAEC2ProductCode;

@interface UAEC2DescribeSnapshotAttributeResponse : UAEC2Response

@property (nonatomic, copy) NSString *snapshotID;
@property (nonatomic, copy) NSArray *createVolumePermissions;
@property (nonatomic, copy) NSArray *productCodes;

@end
