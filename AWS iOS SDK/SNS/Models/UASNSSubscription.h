//
//  UASNSSubscription.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSModel.h"

@interface UASNSSubscription : UASNSModel

@property (nonatomic, copy) NSString *subscriptionARN;
@property (nonatomic, copy) NSString *owner;
@property (nonatomic, copy) NSString *protocol;
@property (nonatomic, copy) NSString *endpoint;
@property (nonatomic, copy) NSString *topicARN;

@end
