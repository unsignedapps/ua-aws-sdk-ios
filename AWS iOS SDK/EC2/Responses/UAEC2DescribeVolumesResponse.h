//
//  UAEC2DescribeVolumesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2Volume;

@interface UAEC2DescribeVolumesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *volumes;

/**
 * Retrieves the UAEC2Volume at the specified index.
**/
- (UAEC2Volume *)volumeAtIndex:(NSUInteger)index;

/**
 * Adds a Volume to the volumes property.
 *
 * This will initialise volumes with an empty mutable array if necessary.
**/
- (void)addVolume:(UAEC2Volume *)volume;

@end
