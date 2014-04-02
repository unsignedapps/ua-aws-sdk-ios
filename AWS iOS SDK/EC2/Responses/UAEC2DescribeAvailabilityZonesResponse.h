//
//  UAEC2DescribeAvailabilityZonesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

@end
