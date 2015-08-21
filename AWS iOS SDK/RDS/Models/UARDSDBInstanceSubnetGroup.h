//
//  UARDSDBInstanceSubnetGroup.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSSubnet;

@interface UARDSDBInstanceSubnetGroup : UARDSModel

@property (nonatomic, copy) NSString *dBSubnetGroupName;
@property (nonatomic, copy) NSString *dBSubnetGroupDescription;
@property (nonatomic, copy) NSString *vpcID;
@property (nonatomic, copy) NSString *subnetGroupStatus;
@property (nonatomic, copy) NSArray *subnets;

/**
 * Retrieves the UARDSSubnet at the specified index.
**/
- (UARDSSubnet *)subnetAtIndex:(NSUInteger)index;

/**
 * Adds a Subnet to the subnets property.
 *
 * This will initialise subnets with an empty mutable array if necessary.
**/
- (void)addSubnet:(UARDSSubnet *)subnet;

@end
