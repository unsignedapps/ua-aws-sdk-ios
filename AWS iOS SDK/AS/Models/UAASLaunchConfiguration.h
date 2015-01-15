//
//  UAASLaunchConfiguration.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASModel.h"

@class UAASBlockDeviceMapping;

@interface UAASLaunchConfiguration : UAASModel

@property (nonatomic, copy) NSString *launchConfigurationName;
@property (nonatomic, copy) NSString *launchConfigurationARN;
@property (nonatomic, copy) NSString *imageID;
@property (nonatomic, copy) NSString *keyName;
@property (nonatomic, copy) NSArray *securityGroups;
@property (nonatomic, copy) NSString *userData;
- (NSString *)decodedUserData;
- (void)setDecodedUserData:(NSString *)decodedUserData;
@property (nonatomic, copy) NSString *instanceType;
@property (nonatomic, copy) NSString *kernelID;
@property (nonatomic, copy) NSString *ramdiskID;
@property (nonatomic, copy) NSArray *blockDeviceMappings;
@property (nonatomic) BOOL instanceMonitoring;
@property (nonatomic, copy) NSString *spotPrice;
@property (nonatomic, copy) NSString *iamInstanceProfile;
@property (nonatomic, copy) NSDate *createdTime;
@property (nonatomic) BOOL ebsOptimized;
@property (nonatomic) BOOL associatePublicIPAddress;
@property (nonatomic, copy) NSString *placementTenancy;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)securityGroupAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAASBlockDeviceMapping at the specified index.
**/
- (UAASBlockDeviceMapping *)blockDeviceMappingAtIndex:(NSUInteger)index;

/**
 * Adds a SecurityGroup to the securityGroups property.
 *
 * This will initialise securityGroups with an empty mutable array if necessary.
**/
- (void)addSecurityGroup:(NSString *)securityGroup;
/**
 * Adds a BlockDeviceMapping to the blockDeviceMappings property.
 *
 * This will initialise blockDeviceMappings with an empty mutable array if necessary.
**/
- (void)addBlockDeviceMapping:(UAASBlockDeviceMapping *)blockDeviceMapping;

@end
