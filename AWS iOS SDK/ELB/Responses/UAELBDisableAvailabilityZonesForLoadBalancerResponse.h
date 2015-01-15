//
//  UAELBDisableAvailabilityZonesForLoadBalancerResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@interface UAELBDisableAvailabilityZonesForLoadBalancerResponse : UAELBResponse

@property (nonatomic, copy) NSArray *availabilityZones;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)availabilityZoneAtIndex:(NSUInteger)index;

/**
 * Adds a AvailabilityZone to the availabilityZones property.
 *
 * This will initialise availabilityZones with an empty mutable array if necessary.
**/
- (void)addAvailabilityZone:(NSString *)availabilityZone;

@end
