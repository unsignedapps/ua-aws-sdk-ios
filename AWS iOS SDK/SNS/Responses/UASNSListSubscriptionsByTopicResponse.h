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

/**
 * Retrieves the UASNSSubscription at the specified index.
**/
- (UASNSSubscription *)subscriptionAtIndex:(NSUInteger)index;

/**
 * Adds a Subscription to the subscriptions property.
 *
 * This will initialise subscriptions with an empty mutable array if necessary.
**/
- (void)addSubscription:(UASNSSubscription *)subscription;

@end
