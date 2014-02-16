//
//  UAEC2PrivateIPAddressSpecifiction.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2PrivateIPAddressSpecifiction : UAEC2Model

@property (nonatomic, copy) NSString *privateIPAddress;
@property (nonatomic) BOOL primary;

@end
