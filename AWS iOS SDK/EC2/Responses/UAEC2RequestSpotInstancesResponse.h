//
//  UAEC2RequestSpotInstancesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2SpotInstanceRequest;

@interface UAEC2RequestSpotInstancesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *spotInstanceRequests;

@end
