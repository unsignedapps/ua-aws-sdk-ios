//
//  UAELBEnableAvailabilityZonesForLoadBalancerResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@interface UAELBEnableAvailabilityZonesForLoadBalancerResponse : UAELBResponse

@property (nonatomic, copy) NSArray *availabilityZones;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)availabilityZoneAtIndex:(NSUInteger)index;

@end
