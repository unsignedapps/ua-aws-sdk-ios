//
//  UAEC2StartInstancesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2InstanceStateChange;

@interface UAEC2StartInstancesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *startingInstances;

/**
 * Retrieves the UAEC2InstanceStateChange at the specified index.
**/
- (UAEC2InstanceStateChange *)startingInstanceAtIndex:(NSUInteger)index;

/**
 * Adds a StartingInstance to the startingInstances property.
 *
 * This will initialise startingInstances with an empty mutable array if necessary.
**/
- (void)addStartingInstance:(UAEC2InstanceStateChange *)startingInstance;

@end
