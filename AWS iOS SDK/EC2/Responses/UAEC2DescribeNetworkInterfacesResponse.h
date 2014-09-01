//
//  UAEC2DescribeNetworkInterfacesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2NetworkInterface;

@interface UAEC2DescribeNetworkInterfacesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *networkInterfaces;

/**
 * Retrieves the UAEC2NetworkInterface at the specified index.
**/
- (UAEC2NetworkInterface *)networkInterfaceAtIndex:(NSUInteger)index;

/**
 * Adds a NetworkInterface to the networkInterfaces property.
 *
 * This will initialise networkInterfaces with an empty mutable array if necessary.
**/
- (void)addNetworkInterface:(UAEC2NetworkInterface *)networkInterface;

@end
