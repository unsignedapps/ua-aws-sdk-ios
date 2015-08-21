//
//  UARDSSubnet.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSSubnetAvailabilityZone;

@interface UARDSSubnet : UARDSModel

@property (nonatomic, copy) NSString *subnetIdentifier;
@property (nonatomic, copy) UARDSSubnetAvailabilityZone *subnetAvailabilityZone;
@property (nonatomic, copy) NSString *subnetStatus;

@end
