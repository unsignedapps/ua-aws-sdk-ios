//
//  UAEC2DescribeAddressesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2Address;

@interface UAEC2DescribeAddressesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *addresses;

/**
 * Retrieves the UAEC2Address at the specified index.
**/
- (UAEC2Address *)addressAtIndex:(NSUInteger)index;

/**
 * Adds a Address to the addresses property.
 *
 * This will initialise addresses with an empty mutable array if necessary.
**/
- (void)addAddress:(UAEC2Address *)address;

@end
