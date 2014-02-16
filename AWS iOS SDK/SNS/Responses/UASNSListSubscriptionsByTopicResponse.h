//
//  UASNSListSubscriptionsByTopicResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSResponse.h"

@class UASNSSubscription;

@interface UASNSListSubscriptionsByTopicResponse : UASNSResponse

@property (nonatomic, copy) NSArray *subscriptions;
@property (nonatomic, copy) NSString *nextToken;

@end
