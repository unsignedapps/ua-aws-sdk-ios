//
//  UAEC2DescribeSpotInstanceRequestsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

@end
