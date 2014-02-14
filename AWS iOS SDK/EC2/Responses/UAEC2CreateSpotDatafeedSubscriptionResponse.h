//
//  UAEC2CreateSpotDatafeedSubscriptionResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2SpotDatafeedSubscription;

@interface UAEC2CreateSpotDatafeedSubscriptionResponse : UAEC2Response

@property (nonatomic, copy) UAEC2SpotDatafeedSubscription *spotDatafeedSubscription;

@end
