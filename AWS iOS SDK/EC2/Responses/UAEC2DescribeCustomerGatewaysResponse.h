//
//  UAEC2DescribeCustomerGatewaysResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2CustomerGateway;

@interface UAEC2DescribeCustomerGatewaysResponse : UAEC2Response

@property (nonatomic, copy) NSArray *customerGateways;

/**
 * Retrieves the UAEC2CustomerGateway at the specified index.
**/
- (UAEC2CustomerGateway *)customerGatewayAtIndex:(NSUInteger)index;

/**
 * Adds a CustomerGateway to the customerGateways property.
 *
 * This will initialise customerGateways with an empty mutable array if necessary.
**/
- (void)addCustomerGateway:(UAEC2CustomerGateway *)customerGateway;

@end
