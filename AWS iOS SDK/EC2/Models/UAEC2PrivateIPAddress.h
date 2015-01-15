//
//  UAEC2PrivateIPAddress.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2NetworkInterfaceAssociation;

@interface UAEC2PrivateIPAddress : UAEC2Model

@property (nonatomic, copy) NSString *privateIPAddress;
@property (nonatomic, copy) NSString *privateDNSName;
@property (nonatomic) BOOL primary;
@property (nonatomic, copy) UAEC2NetworkInterfaceAssociation *association;

@end
