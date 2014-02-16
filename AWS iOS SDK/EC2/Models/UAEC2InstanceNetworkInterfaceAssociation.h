//
//  UAEC2InstanceNetworkInterfaceAssociation.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2InstanceNetworkInterfaceAssociation : UAEC2Model

@property (nonatomic, copy) NSString *publicIP;
@property (nonatomic, copy) NSString *publicDNSName;
@property (nonatomic, copy) NSString *ipOwnerID;

@end
