//
//  UAEC2DescribeAvailabilityZonesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2AvailabilityZone;

@interface UAEC2DescribeAvailabilityZonesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *availabilityZones;

/**
 * Retrieves the UAEC2AvailabilityZone at the specified index.
**/
- (UAEC2AvailabilityZone *)availabilityZoneAtIndex:(NSUInteger)index;

/**
 * Adds a AvailabilityZone to the availabilityZones property.
 *
 * This will initialise availabilityZones with an empty mutable array if necessary.
**/
- (void)addAvailabilityZone:(UAEC2AvailabilityZone *)availabilityZone;

@end
