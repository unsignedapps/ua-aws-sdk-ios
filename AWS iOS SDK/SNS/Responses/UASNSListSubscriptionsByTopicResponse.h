//
//  UASNSListSubscriptionsByTopicResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSResponse.h"

@class UASNSSubscription;

@interface UASNSListSubscriptionsByTopicResponse : UASNSResponse

@property (nonatomic, copy) NSArray *subscriptions;
@property (nonatomic, copy) NSString *nextToken;

@end
