//
//  UAEC2DescribeReservedInstancesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2ReservedInstance;

@interface UAEC2DescribeReservedInstancesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *reservedInstances;

/**
 * Retrieves the UAEC2ReservedInstance at the specified index.
**/
- (UAEC2ReservedInstance *)reservedInstanceAtIndex:(NSUInteger)index;

/**
 * Adds a ReservedInstance to the reservedInstances property.
 *
 * This will initialise reservedInstances with an empty mutable array if necessary.
**/
- (void)addReservedInstance:(UAEC2ReservedInstance *)reservedInstance;

@end
