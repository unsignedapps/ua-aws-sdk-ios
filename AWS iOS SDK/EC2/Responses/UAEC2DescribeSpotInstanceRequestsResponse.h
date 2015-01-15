//
//  UAEC2DescribeSpotInstanceRequestsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2SpotInstanceRequest;

@interface UAEC2DescribeSpotInstanceRequestsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *spotInstanceRequests;

/**
 * Retrieves the UAEC2SpotInstanceRequest at the specified index.
**/
- (UAEC2SpotInstanceRequest *)spotInstanceRequestAtIndex:(NSUInteger)index;

/**
 * Adds a SpotInstanceRequest to the spotInstanceRequests property.
 *
 * This will initialise spotInstanceRequests with an empty mutable array if necessary.
**/
- (void)addSpotInstanceRequest:(UAEC2SpotInstanceRequest *)spotInstanceRequest;

@end
