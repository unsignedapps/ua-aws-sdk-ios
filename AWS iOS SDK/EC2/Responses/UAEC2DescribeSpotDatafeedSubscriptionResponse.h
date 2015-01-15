//
//  UAEC2DescribeSpotDatafeedSubscriptionResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2SpotDatafeedSubscription;

@interface UAEC2DescribeSpotDatafeedSubscriptionResponse : UAEC2Response

@property (nonatomic, copy) UAEC2SpotDatafeedSubscription *spotDatafeedSubscription;

@end
