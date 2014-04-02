//
//  UAEC2DescribeReservedInstancesOfferingsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

@end
