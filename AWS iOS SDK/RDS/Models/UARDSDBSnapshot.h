//
//  UARDSDBSnapshot.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@interface UARDSDBSnapshot : UARDSModel

@property (nonatomic, copy) NSString *dBSnapshotIdentifier;
@property (nonatomic, copy) NSString *dBInstanceIdentifier;
@property (nonatomic, copy) NSDate *snapshotCreateTime;
@property (nonatomic) UARDSEngine engine;
@property (nonatomic, strong) NSNumber *allocatedStorage;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, strong) NSNumber *port;
@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic, copy) NSString *vpcID;
@property (nonatomic, copy) NSDate *instanceCreateTime;
@property (nonatomic, copy) NSString *masterUsername;
@property (nonatomic, copy) NSString *engineVersion;
@property (nonatomic) UARDSLicenseModel licenseModel;
@property (nonatomic, copy) NSString *snapshotType;
@property (nonatomic, strong) NSNumber *iops;
@property (nonatomic, copy) NSString *optionGroupName;
@property (nonatomic, strong) NSNumber *percentProgress;
@property (nonatomic, copy) NSString *sourceRegion;
@property (nonatomic) UARDSStorageType storageType;
@property (nonatomic, copy) NSString *tdeCredentialARN;
@property (nonatomic) BOOL encrypted;
@property (nonatomic, copy) NSString *kmsKeyID;

@end
