//
//  UARDSPendingModifiedValues.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@interface UARDSPendingModifiedValues : UARDSModel

@property (nonatomic, copy) NSString *dBInstanceClass;
@property (nonatomic, strong) NSNumber *allocatedStorage;
@property (nonatomic, copy) NSString *masterUserPassword;
@property (nonatomic, strong) NSNumber *port;
@property (nonatomic, strong) NSNumber *backupRetentionPeriod;
@property (nonatomic) BOOL multiAZ;
@property (nonatomic, copy) NSString *engineVersion;
@property (nonatomic, strong) NSNumber *iops;
@property (nonatomic, copy) NSString *dBInstanceIdentifier;
@property (nonatomic) UARDSStorageType storageType;
@property (nonatomic, copy) NSString *cACertificateIdentifier;

@end
