//
//  UAEC2DescribeReservedInstancesOfferingsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2ReservedInstancesOffering;

@interface UAEC2DescribeReservedInstancesOfferingsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *reservedInstancesOfferings;
@property (nonatomic, copy) NSString *nextToken;

/**
 * Retrieves the UAEC2ReservedInstancesOffering at the specified index.
**/
- (UAEC2ReservedInstancesOffering *)reservedInstancesOfferingAtIndex:(NSUInteger)index;

/**
 * Adds a ReservedInstancesOffering to the reservedInstancesOfferings property.
 *
 * This will initialise reservedInstancesOfferings with an empty mutable array if necessary.
**/
- (void)addReservedInstancesOffering:(UAEC2ReservedInstancesOffering *)reservedInstancesOffering;

@end
