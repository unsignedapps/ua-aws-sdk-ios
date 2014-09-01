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

/**
 * Retrieves the UAEC2InternetGateway at the specified index.
**/
- (UAEC2InternetGateway *)internetGatewayAtIndex:(NSUInteger)index;

/**
 * Adds a InternetGateway to the internetGateways property.
 *
 * This will initialise internetGateways with an empty mutable array if necessary.
**/
- (void)addInternetGateway:(UAEC2InternetGateway *)internetGateway;

@end
