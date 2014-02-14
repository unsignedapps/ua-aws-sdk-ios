//
//  UAEC2CancelSpotInstanceRequestsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2CancelledSpotInstanceRequest;

@interface UAEC2CancelSpotInstanceRequestsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *cancelledSpotInstanceRequests;

@end
