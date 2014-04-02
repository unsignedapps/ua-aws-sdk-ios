//
//  UASNSListSubscriptionsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSResponse.h"

@class UASNSSubscription;

@interface UASNSListSubscriptionsResponse : UASNSResponse

@property (nonatomic, copy) NSArray *subscriptions;
@property (nonatomic, copy) NSString *nextToken;

/**
 * Retrieves the UASNSSubscription at the specified index.
**/
- (UASNSSubscription *)subscriptionAtIndex:(NSUInteger)index;

@end
