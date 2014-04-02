//
//  UAEC2DescribeReservedInstancesListingsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2ReservedInstancesListing;

@interface UAEC2DescribeReservedInstancesListingsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *reservedInstancesListings;

/**
 * Retrieves the UAEC2ReservedInstancesListing at the specified index.
**/
- (UAEC2ReservedInstancesListing *)reservedInstancesListingAtIndex:(NSUInteger)index;

@end
