//
//  UAASLaunchConfiguration.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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
@property (nonatomic, copy) NSString *decodedUserData;
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

@end
