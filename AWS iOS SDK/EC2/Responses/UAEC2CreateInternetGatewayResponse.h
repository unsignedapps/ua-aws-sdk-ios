//
//  UAEC2CreateInternetGatewayResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2InternetGateway;

@interface UAEC2CreateInternetGatewayResponse : UAEC2Response

@property (nonatomic, copy) UAEC2InternetGateway *internetGateway;

@end
