//
//  UARDSEventSubscriptionsMessage.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSEventSubscriptionsList;

@interface UARDSEventSubscriptionsMessage : UARDSModel

@property (nonatomic, copy) NSString *marker;
@property (nonatomic, copy) NSArray *eventSubscriptionsList;

/**
 * Retrieves the UARDSEventSubscriptionsList at the specified index.
**/
- (UARDSEventSubscriptionsList *)eventSubscriptionsListAtIndex:(NSUInteger)index;

/**
 * Adds a EventSubscriptionsList to the eventSubscriptionsList property.
 *
 * This will initialise eventSubscriptionsList with an empty mutable array if necessary.
**/
- (void)addEventSubscriptionsList:(UARDSEventSubscriptionsList *)eventSubscriptionsList;

@end
