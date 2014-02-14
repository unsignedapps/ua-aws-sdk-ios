//
//  UAEC2DescribeAvailabilityZonesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2AvailabilityZone;

@interface UAEC2DescribeAvailabilityZonesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *availabilityZones;

@end
