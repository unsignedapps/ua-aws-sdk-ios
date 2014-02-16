//
//  UASNSSubscription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSSubscription.h"

@implementation UASNSSubscription

@synthesize subscriptionARN=_subscriptionARN, owner=_owner, protocol=_protocol, endpoint=_endpoint, topicARN=_topicARN;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"subscriptionARN": @"Sns:SubscriptionArn",
        @"owner": @"Sns:Owner",
        @"protocol": @"Sns:Protocol",
        @"endpoint": @"Sns:Endpoint",
        @"topicARN": @"Sns:TopicArn"
    }];
    return [keyPaths copy];
}

@end
