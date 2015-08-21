//
//  UARDSEventSubscriptionResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSResponse.h"

@class UARDSEventSubscription;

@interface UARDSEventSubscriptionResponse : UARDSResponse

@property (nonatomic, copy) UARDSEventSubscription *eventSubscription;

@end
