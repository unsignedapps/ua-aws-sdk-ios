//
//  UAEC2PrivateIPAddressSpecification.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2PrivateIPAddressSpecification : UAEC2Model

@property (nonatomic, copy) NSString *privateIPAddress;
@property (nonatomic) BOOL primary;

@end
