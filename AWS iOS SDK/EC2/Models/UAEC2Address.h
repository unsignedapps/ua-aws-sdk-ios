//
//  UAEC2Address.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2Address : UAEC2Model

@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic, copy) NSString *publicIP;
@property (nonatomic, copy) NSString *allocationID;
@property (nonatomic, copy) NSString *associationID;
@property (nonatomic) UAEC2Domain domain;
@property (nonatomic, copy) NSString *networkInterfaceID;
@property (nonatomic, copy) NSString *networkInterfaceOwnerID;
@property (nonatomic, copy) NSString *privateIPAddress;

@end
