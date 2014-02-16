//
//  UAEC2Instance.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2ProductCode, UAEC2Placement, UAEC2StateReason, UAEC2InstanceBlockDeviceMapping, UAEC2InstanceLicense, UAEC2Tag, UAEC2GroupIdentifier, UAEC2InstanceNetworkInterface, UAEC2IAMInstanceProfile;

@interface UAEC2Instance : UAEC2Model

@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic, copy) NSString *imageID;
@property (nonatomic) UAEC2InstanceState state;
@property (nonatomic, copy) NSString *privateDNSName;
@property (nonatomic, copy) NSString *publicDNSName;
@property (nonatomic, copy) NSString *stateTransitionReason;
@property (nonatomic, copy) NSString *keyName;
@property (nonatomic, strong) NSNumber *amiLaunchIndex;
@property (nonatomic, copy) NSArray *productCodes;
@property (nonatomic, copy) NSString *instanceType;
@property (nonatomic, copy) NSDate *launchTime;
@property (nonatomic, copy) UAEC2Placement *placement;
@property (nonatomic, copy) NSString *kernelID;
@property (nonatomic, copy) NSString *ramdiskID;
@property (nonatomic, copy) NSString *platform;
@property (nonatomic) UAEC2InstanceMonitoringState monitoring;
@property (nonatomic, copy) NSString *subnetID;
@property (nonatomic, copy) NSString *vpcID;
@property (nonatomic, copy) NSString *privateIPAddress;
@property (nonatomic, copy) NSString *publicIPAddress;
@property (nonatomic, copy) UAEC2StateReason *stateReason;
@property (nonatomic) UAEC2InstanceArchitecture architecture;
@property (nonatomic) UAEC2InstanceRootDeviceType rootDeviceType;
@property (nonatomic, copy) NSString *rootDeviceName;
@property (nonatomic, copy) NSArray *blockDeviceMappings;
@property (nonatomic) UAEC2InstanceVirtualizationType virtualizationType;
@property (nonatomic, copy) NSString *instanceLifecycle;
@property (nonatomic, copy) NSString *spotInstanceRequestID;
@property (nonatomic, copy) UAEC2InstanceLicense *license;
@property (nonatomic, copy) NSString *clientToken;
@property (nonatomic, copy) NSArray *tags;
@property (nonatomic, copy) NSArray *securityGroups;
@property (nonatomic) BOOL sourceDestCheck;
@property (nonatomic, copy) NSString *hypervisor;
@property (nonatomic, copy) NSArray *networkInterfaces;
@property (nonatomic, copy) UAEC2IAMInstanceProfile *iamInstanceProfile;
@property (nonatomic) BOOL ebsOptimized;
@property (nonatomic, copy) NSString *sriovNetSupport;

@end
