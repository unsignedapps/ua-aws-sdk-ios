//
//  UASNSTopicAttributes.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSTopicAttributes.h"

@implementation UASNSTopicAttributes

@synthesize topicARN=_topicARN, owner=_owner, policy=_policy, displayName=_displayName, subscriptionsPending=_subscriptionsPending, subscriptionsConfirmed=_subscriptionsConfirmed, subscriptionsDeleted=_subscriptionsDeleted, deliveryPolicy=_deliveryPolicy, effectiveDeliveryPolicy=_effectiveDeliveryPolicy;

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
        @"topicARN": @"Sns:entry/Sns:value[../Sns:key/text() = \"TopicArn\"]",
        @"owner": @"Sns:entry/Sns:value[../Sns:key/text() = \"Owner\"]",
        @"policy": @"Sns:entry/Sns:value[../Sns:key/text() = \"Policy\"]",
        @"displayName": @"Sns:entry/Sns:value[../Sns:key/text() = \"DisplayName\"]",
        @"subscriptionsPending": @"Sns:entry/Sns:value[../Sns:key/text() = \"SubscriptionsPending\"]",
        @"subscriptionsConfirmed": @"Sns:entry/Sns:value[../Sns:key/text() = \"SubscriptionsConfirmed\"]",
        @"subscriptionsDeleted": @"Sns:entry/Sns:value[../Sns:key/text() = \"SubscriptionsDeleted\"]",
        @"deliveryPolicy": @"Sns:entry/Sns:value[../Sns:key/text() = \"DeliveryPolicy\"]",
        @"effectiveDeliveryPolicy": @"Sns:entry/Sns:value[../Sns:key/text() = \"EffectiveDeliveryPolicy\"]"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)subscriptionsPendingXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)subscriptionsConfirmedXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)subscriptionsDeletedXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
