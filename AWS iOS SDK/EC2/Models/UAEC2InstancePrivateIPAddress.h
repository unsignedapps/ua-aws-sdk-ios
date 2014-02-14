//
//  UAEC2InstancePrivateIPAddress.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2InstanceNetworkInterfaceAssociation;

@interface UAEC2InstancePrivateIPAddress : UAEC2Model

@property (nonatomic, copy) NSString *privateIPAddress;
@property (nonatomic, copy) NSString *privateDNSName;
@property (nonatomic) BOOL primary;
@property (nonatomic, copy) UAEC2InstanceNetworkInterfaceAssociation *association;

@end
