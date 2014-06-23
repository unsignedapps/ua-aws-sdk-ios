//
//  UAEC2DescribeInstanceAttributeResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2InstanceBlockDeviceMapping, UAEC2ProductCode;

@interface UAEC2DescribeInstanceAttributeResponse : UAEC2Response

@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic, copy) NSString *instanceType;
@property (nonatomic, copy) NSString *kernelID;
@property (nonatomic, copy) NSString *ramdiskID;
@property (nonatomic, copy) NSString *userData;
@property (nonatomic, copy) NSString *decodedUserData;
@property (nonatomic) BOOL disableApiTermination;
@property (nonatomic) UAEC2InstanceInitiatedShutdownBehavior instanceInitiatedShutdownBehavior;
@property (nonatomic, copy) NSString *rootDeviceName;
@property (nonatomic, copy) NSArray *blockDeviceMappings;
@property (nonatomic, copy) NSArray *productCodes;
@property (nonatomic) BOOL ebsOptimized;
@property (nonatomic, copy) NSString *sriovNetSupport;
@property (nonatomic) BOOL sourceDestCheck;

/**
 * Retrieves the UAEC2InstanceBlockDeviceMapping at the specified index.
**/
- (UAEC2InstanceBlockDeviceMapping *)blockDeviceMappingAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2ProductCode at the specified index.
**/
- (UAEC2ProductCode *)productCodeAtIndex:(NSUInteger)index;

@end
