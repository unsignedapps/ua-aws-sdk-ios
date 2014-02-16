//
//  UAEC2CreateCustomerGatewayResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2CustomerGateway;

@interface UAEC2CreateCustomerGatewayResponse : UAEC2Response

@property (nonatomic, copy) UAEC2CustomerGateway *customerGateway;

@end
