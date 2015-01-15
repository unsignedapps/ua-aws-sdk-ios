//
//  UAEC2DescribeInstancesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2Reservation;

@interface UAEC2DescribeInstancesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *reservations;
@property (nonatomic, copy) NSString *nextToken;

/**
 * Retrieves the UAEC2Reservation at the specified index.
**/
- (UAEC2Reservation *)reservationAtIndex:(NSUInteger)index;

/**
 * Adds a Reservation to the reservations property.
 *
 * This will initialise reservations with an empty mutable array if necessary.
**/
- (void)addReservation:(UAEC2Reservation *)reservation;

@end
