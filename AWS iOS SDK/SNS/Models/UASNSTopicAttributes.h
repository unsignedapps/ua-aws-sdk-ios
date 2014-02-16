//
//  UASNSTopicAttributes.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSModel.h"

@interface UASNSTopicAttributes : UASNSModel

@property (nonatomic, copy) NSString *topicARN;
@property (nonatomic, copy) NSString *owner;
@property (nonatomic, copy) NSString *policy;
@property (nonatomic, copy) NSString *displayName;
@property (nonatomic, strong) NSNumber *subscriptionsPending;
@property (nonatomic, strong) NSNumber *subscriptionsConfirmed;
@property (nonatomic, strong) NSNumber *subscriptionsDeleted;
@property (nonatomic, copy) NSString *deliveryPolicy;
@property (nonatomic, copy) NSString *effectiveDeliveryPolicy;

@end
