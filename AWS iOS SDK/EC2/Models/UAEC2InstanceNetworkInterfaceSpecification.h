//
//  UAEC2InstanceNetworkInterfaceSpecification.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2PrivateIPAddressSpecifiction;

@interface UAEC2InstanceNetworkInterfaceSpecification : UAEC2Model

@property (nonatomic, copy) NSString *networkInterfaceID;
@property (nonatomic, strong) NSNumber *deviceIndex;
@property (nonatomic, copy) NSString *subnetID;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, copy) NSString *privateIPAddress;
@property (nonatomic, strong) NSMutableArray *groups;
@property (nonatomic) BOOL deleteOnTermination;
@property (nonatomic, strong) NSMutableArray *privateIPAddresses;
@property (nonatomic, strong) NSNumber *secondaryPrivateIPAddressCount;
@property (nonatomic) BOOL associatePublicIPAddress;

@end
