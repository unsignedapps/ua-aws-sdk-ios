//
//  UARDSOrderableDBInstanceOption.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSAvailabilityZone;

@interface UARDSOrderableDBInstanceOption : UARDSModel

@property (nonatomic) UARDSEngine engine;
@property (nonatomic, copy) NSString *engineVersion;
@property (nonatomic, copy) NSString *dBInstanceClass;
@property (nonatomic) UARDSLicenseModel licenseModel;
@property (nonatomic, copy) NSArray *availabilityZones;
@property (nonatomic) BOOL multiAZCapable;
@property (nonatomic) BOOL readReplicaCapable;
@property (nonatomic) BOOL vpc;
@property (nonatomic) BOOL supportsStorageEncryption;
@property (nonatomic) UARDSStorageType storageType;
@property (nonatomic) BOOL supportsIops;

/**
 * Retrieves the UARDSAvailabilityZone at the specified index.
**/
- (UARDSAvailabilityZone *)availabilityZoneAtIndex:(NSUInteger)index;

/**
 * Adds a AvailabilityZone to the availabilityZones property.
 *
 * This will initialise availabilityZones with an empty mutable array if necessary.
**/
- (void)addAvailabilityZone:(UARDSAvailabilityZone *)availabilityZone;

@end
