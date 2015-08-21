//
//  UARDSDBInstance.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSEndpoint, UARDSDBInstanceSecurityGroup, UARDSVPCSecurityGroup, UARDSDBInstanceParameterGroup, UARDSDBInstanceSubnetGroup, UARDSPendingModifiedValues, UARDSOptionGroupMembership, UARDSStatusInfo;

@interface UARDSDBInstance : UARDSModel

@property (nonatomic, copy) NSString *dBInstanceIdentifier;
@property (nonatomic, copy) NSString *dBInstanceClass;
@property (nonatomic) UARDSEngine engine;
@property (nonatomic, copy) NSString *dBInstanceStatus;
@property (nonatomic, copy) NSString *masterUsername;
@property (nonatomic, copy) NSString *dBName;
@property (nonatomic, copy) UARDSEndpoint *endpoint;
@property (nonatomic, strong) NSNumber *allocatedStorage;
@property (nonatomic, copy) NSDate *instanceCreateTime;
@property (nonatomic, copy) NSString *preferredBackupWindow;
@property (nonatomic, strong) NSNumber *backupRetentionPeriod;
@property (nonatomic, copy) NSArray *dBSecurityGroups;
@property (nonatomic, copy) NSArray *vpcSecurityGroups;
@property (nonatomic, copy) NSArray *dBParameterGroups;
@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic, copy) UARDSDBInstanceSubnetGroup *dBSubnetGroup;
@property (nonatomic, copy) NSString *preferredMaintenanceWindow;
@property (nonatomic, copy) UARDSPendingModifiedValues *pendingModifiedValues;
@property (nonatomic, copy) NSDate *latestRestorableTime;
@property (nonatomic) BOOL multiAZ;
@property (nonatomic, copy) NSString *engineVersion;
@property (nonatomic) BOOL autoMinorVersionUpgrade;
@property (nonatomic, copy) NSString *readReplicaSourceDBInstanceIdentifier;
@property (nonatomic, copy) NSArray *readReplicaDBInstanceIdentifiers;
@property (nonatomic) UARDSLicenseModel licenseModel;
@property (nonatomic, strong) NSNumber *iops;
@property (nonatomic, copy) NSArray *optionGroupMemberships;
@property (nonatomic, copy) NSString *characterSetName;
@property (nonatomic, copy) NSString *secondaryAvailabilityZone;
@property (nonatomic) BOOL publiclyAccessible;
@property (nonatomic, copy) NSArray *statusInfos;
@property (nonatomic) UARDSStorageType storageType;
@property (nonatomic, copy) NSString *tdeCredentialARN;
@property (nonatomic) BOOL storageEncrypted;
@property (nonatomic, copy) NSString *kmsKeyID;
@property (nonatomic, copy) NSString *dbiResourceID;
@property (nonatomic, copy) NSString *cACertificateIdentifier;

/**
 * Retrieves the UARDSDBInstanceSecurityGroup at the specified index.
**/
- (UARDSDBInstanceSecurityGroup *)dBSecurityGroupAtIndex:(NSUInteger)index;

/**
 * Retrieves the UARDSVPCSecurityGroup at the specified index.
**/
- (UARDSVPCSecurityGroup *)vpcSecurityGroupAtIndex:(NSUInteger)index;

/**
 * Retrieves the UARDSDBInstanceParameterGroup at the specified index.
**/
- (UARDSDBInstanceParameterGroup *)dBParameterGroupAtIndex:(NSUInteger)index;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)readReplicaDBInstanceIdentifierAtIndex:(NSUInteger)index;

/**
 * Retrieves the UARDSOptionGroupMembership at the specified index.
**/
- (UARDSOptionGroupMembership *)optionGroupMembershipAtIndex:(NSUInteger)index;

/**
 * Retrieves the UARDSStatusInfo at the specified index.
**/
- (UARDSStatusInfo *)statusInfoAtIndex:(NSUInteger)index;

/**
 * Adds a DBSecurityGroup to the dBSecurityGroups property.
 *
 * This will initialise dBSecurityGroups with an empty mutable array if necessary.
**/
- (void)addDBSecurityGroup:(UARDSDBInstanceSecurityGroup *)dBSecurityGroup;
/**
 * Adds a VPCSecurityGroup to the vpcSecurityGroups property.
 *
 * This will initialise vpcSecurityGroups with an empty mutable array if necessary.
**/
- (void)addVPCSecurityGroup:(UARDSVPCSecurityGroup *)vPCSecurityGroup;
/**
 * Adds a DBParameterGroup to the dBParameterGroups property.
 *
 * This will initialise dBParameterGroups with an empty mutable array if necessary.
**/
- (void)addDBParameterGroup:(UARDSDBInstanceParameterGroup *)dBParameterGroup;
/**
 * Adds a ReadReplicaDBInstanceIdentifier to the readReplicaDBInstanceIdentifiers property.
 *
 * This will initialise readReplicaDBInstanceIdentifiers with an empty mutable array if necessary.
**/
- (void)addReadReplicaDBInstanceIdentifier:(NSString *)readReplicaDBInstanceIdentifier;
/**
 * Adds a OptionGroupMembership to the optionGroupMemberships property.
 *
 * This will initialise optionGroupMemberships with an empty mutable array if necessary.
**/
- (void)addOptionGroupMembership:(UARDSOptionGroupMembership *)optionGroupMembership;
/**
 * Adds a StatusInfo to the statusInfos property.
 *
 * This will initialise statusInfos with an empty mutable array if necessary.
**/
- (void)addStatusInfo:(UARDSStatusInfo *)statusInfo;

@end
