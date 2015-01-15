//
//  UAEC2LaunchSpecificationSpecification.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2SpotPlacement, UAEC2BlockDeviceMapping, UAEC2NetworkInterfaceSpecification, UAEC2IAMInstanceProfileSpecification;

@interface UAEC2LaunchSpecificationSpecification : UAEC2Model

@property (nonatomic, copy) NSString *imageID;
@property (nonatomic, copy) NSString *keyName;
@property (nonatomic, copy) NSString *userData;
- (NSString *)decodedUserData;
- (void)setDecodedUserData:(NSString *)decodedUserData;
@property (nonatomic, copy) NSString *addressingType;
@property (nonatomic, copy) NSString *instanceType;
@property (nonatomic, copy) UAEC2SpotPlacement *placement;
@property (nonatomic, copy) NSString *kernelID;
@property (nonatomic, copy) NSString *ramdiskID;
@property (nonatomic, strong) NSMutableArray *blockDeviceMappings;
@property (nonatomic) BOOL monitoringEnabled;
@property (nonatomic, copy) NSString *subnetID;
@property (nonatomic, strong) NSMutableArray *networkInterfaces;
@property (nonatomic, copy) UAEC2IAMInstanceProfileSpecification *iamInstanceProfile;
@property (nonatomic) BOOL ebsOptimized;
@property (nonatomic, strong) NSMutableArray *securityGroups;

/**
 * Retrieves the UAEC2BlockDeviceMapping at the specified index.
**/
- (UAEC2BlockDeviceMapping *)blockDeviceMappingAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2NetworkInterfaceSpecification at the specified index.
**/
- (UAEC2NetworkInterfaceSpecification *)networkInterfaceAtIndex:(NSUInteger)index;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)securityGroupAtIndex:(NSUInteger)index;

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
- (void)addNetworkInterface:(UAEC2NetworkInterfaceSpecification *)networkInterface;
/**
 * Adds a SecurityGroup to the securityGroups property.
 *
 * This will initialise securityGroups with an empty mutable array if necessary.
**/
- (void)addSecurityGroup:(NSString *)securityGroup;

@end
