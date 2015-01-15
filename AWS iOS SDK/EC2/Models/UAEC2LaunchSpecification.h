//
//  UAEC2LaunchSpecification.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2GroupIdentifier, UAEC2SpotPlacement, UAEC2BlockDeviceMapping, UAEC2InstanceNetworkInterfaceSpecification, UAEC2IAMInstanceProfileSpecification;

@interface UAEC2LaunchSpecification : UAEC2Model

@property (nonatomic, copy) NSString *imageID;
@property (nonatomic, copy) NSString *keyName;
@property (nonatomic, copy) NSArray *securityGroups;
@property (nonatomic, copy) NSString *userData;
- (NSString *)decodedUserData;
- (void)setDecodedUserData:(NSString *)decodedUserData;
@property (nonatomic, copy) NSString *addressingType;
@property (nonatomic, copy) NSString *instanceType;
@property (nonatomic, copy) UAEC2SpotPlacement *placement;
@property (nonatomic, copy) NSString *kernelID;
@property (nonatomic, copy) NSString *ramdiskID;
@property (nonatomic, copy) NSArray *blockDeviceMappings;
@property (nonatomic) BOOL monitoringEnabled;
@property (nonatomic, copy) NSString *subnetID;
@property (nonatomic, copy) NSArray *networkInterfaces;
@property (nonatomic, copy) UAEC2IAMInstanceProfileSpecification *iamInstanceProfile;
@property (nonatomic) BOOL ebsOptimized;

/**
 * Retrieves the UAEC2GroupIdentifier at the specified index.
**/
- (UAEC2GroupIdentifier *)securityGroupAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2BlockDeviceMapping at the specified index.
**/
- (UAEC2BlockDeviceMapping *)blockDeviceMappingAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2InstanceNetworkInterfaceSpecification at the specified index.
**/
- (UAEC2InstanceNetworkInterfaceSpecification *)networkInterfaceAtIndex:(NSUInteger)index;

/**
 * Adds a SecurityGroup to the securityGroups property.
 *
 * This will initialise securityGroups with an empty mutable array if necessary.
**/
- (void)addSecurityGroup:(UAEC2GroupIdentifier *)securityGroup;
/**
 * Adds a BlockDeviceMapping to the blockDeviceMappings property.
 *
 * This will initialise blockDeviceMappings with an empty mutable array if necessary.
**/
- (void)addBlockDeviceMapping:(UAEC2BlockDeviceMapping *)blockDeviceMapping;
/**
 * Adds a NetworkInterface to the networkInterfaces property.
 *
 * This will initialise networkInterfaces with an empty mutable array if necessary.
**/
- (void)addNetworkInterface:(UAEC2InstanceNetworkInterfaceSpecification *)networkInterface;

@end
