//
//  UAEC2TerminateInstancesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2InstanceStateChange;

@interface UAEC2TerminateInstancesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *terminatingInstances;

/**
 * Retrieves the UAEC2InstanceStateChange at the specified index.
**/
- (UAEC2InstanceStateChange *)terminatingInstanceAtIndex:(NSUInteger)index;

/**
 * Adds a TerminatingInstance to the terminatingInstances property.
 *
 * This will initialise terminatingInstances with an empty mutable array if necessary.
**/
- (void)addTerminatingInstance:(UAEC2InstanceStateChange *)terminatingInstance;

@end
