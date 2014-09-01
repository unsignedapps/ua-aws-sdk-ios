//
//  UAEC2DescribeRegionsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2Region;

@interface UAEC2DescribeRegionsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *regions;

/**
 * Retrieves the UAEC2Region at the specified index.
**/
- (UAEC2Region *)regionAtIndex:(NSUInteger)index;

/**
 * Adds a Region to the regions property.
 *
 * This will initialise regions with an empty mutable array if necessary.
**/
- (void)addRegion:(UAEC2Region *)region;

@end
