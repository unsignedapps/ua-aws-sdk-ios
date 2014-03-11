//
//  UASNSSubscriptionAttributes.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSSubscriptionAttributes.h"

@implementation UASNSSubscriptionAttributes

@synthesize subscriptionARN=_subscriptionARN, topicARN=_topicARN, owner=_owner, confirmationWasAuthenticated=_confirmationWasAuthenticated, deliveryPolicy=_deliveryPolicy, effectiveDeliveryPolicy=_effectiveDeliveryPolicy;

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
        @"subscriptionARN": @"Sns:entry/Sns:value[../Sns:key/text() = \"SubscriptionArn\"]",
        @"topicARN": @"Sns:entry/Sns:value[../Sns:key/text() = \"TopicArn\"]",
        @"owner": @"Sns:entry/Sns:value[../Sns:key/text() = \"Owner\"]",
        @"confirmationWasAuthenticated": @"Sns:entry/Sns:value[../Sns:key/text() = \"ConfirmationWasAuthenticated\"]",
        @"deliveryPolicy": @"Sns:entry/Sns:value[../Sns:key/text() = \"DeliveryPolicy\"]",
        @"effectiveDeliveryPolicy": @"Sns:entry/Sns:value[../Sns:key/text() = \"EffectiveDeliveryPolicy\"]"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)confirmationWasAuthenticatedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
