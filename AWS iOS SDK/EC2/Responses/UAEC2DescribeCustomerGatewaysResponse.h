//
//  UAEC2DescribeCustomerGatewaysResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2CustomerGatewayy;

@interface UAEC2DescribeCustomerGatewaysResponse : UAEC2Response

@property (nonatomic, copy) NSArray *customerGateways;

@end
