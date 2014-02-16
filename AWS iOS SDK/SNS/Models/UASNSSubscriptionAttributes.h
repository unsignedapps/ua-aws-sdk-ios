//
//  UASNSSubscriptionAttributes.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSModel.h"

@interface UASNSSubscriptionAttributes : UASNSModel

@property (nonatomic, copy) NSString *subscriptionARN;
@property (nonatomic, copy) NSString *topicARN;
@property (nonatomic, copy) NSString *owner;
@property (nonatomic) BOOL confirmationWasAuthenticated;
@property (nonatomic, copy) NSString *deliveryPolicy;
@property (nonatomic, copy) NSString *effectiveDeliveryPolicy;

@end
