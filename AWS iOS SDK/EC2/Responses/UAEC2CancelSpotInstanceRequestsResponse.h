//
//  UAEC2CancelSpotInstanceRequestsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2CancelledSpotInstanceRequest;

@interface UAEC2CancelSpotInstanceRequestsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *cancelledSpotInstanceRequests;

/**
 * Retrieves the UAEC2CancelledSpotInstanceRequest at the specified index.
**/
- (UAEC2CancelledSpotInstanceRequest *)cancelledSpotInstanceRequestAtIndex:(NSUInteger)index;

/**
 * Adds a CancelledSpotInstanceRequest to the cancelledSpotInstanceRequests property.
 *
 * This will initialise cancelledSpotInstanceRequests with an empty mutable array if necessary.
**/
- (void)addCancelledSpotInstanceRequest:(UAEC2CancelledSpotInstanceRequest *)cancelledSpotInstanceRequest;

@end
