//
//  UAEC2DescribeInternetGatewaysResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2InternetGateway;

@interface UAEC2DescribeInternetGatewaysResponse : UAEC2Response

@property (nonatomic, copy) NSArray *internetGateways;

@end
