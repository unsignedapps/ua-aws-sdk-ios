//
//  UAEC2StopInstancesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2InstanceStateChange;

@interface UAEC2StopInstancesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *stoppingInstances;

/**
 * Retrieves the UAEC2InstanceStateChange at the specified index.
**/
- (UAEC2InstanceStateChange *)stoppingInstanceAtIndex:(NSUInteger)index;

/**
 * Adds a StoppingInstance to the stoppingInstances property.
 *
 * This will initialise stoppingInstances with an empty mutable array if necessary.
**/
- (void)addStoppingInstance:(UAEC2InstanceStateChange *)stoppingInstance;

@end
