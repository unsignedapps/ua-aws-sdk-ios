//
//  UASNSSubscription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSSubscription.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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

+ (NSValueTransformer *)protocolQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UASNSProtocolHTTP), @(UASNSProtocolHTTPS), @(UASNSProtocolEmail), @(UASNSProtocolEmailJSON), @(UASNSProtocolSMS), @(UASNSProtocolSQS), @(UASNSProtocolApplication) ]
                                               stringValues:@[ @"http", @"https", @"email", @"email-json", @"sms", @"sqs", @"application" ]
                                               unknownValue:@(UASNSProtocolUnknown)];
}

+ (NSValueTransformer *)protocolXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UASNSProtocolHTTP), @(UASNSProtocolHTTPS), @(UASNSProtocolEmail), @(UASNSProtocolEmailJSON), @(UASNSProtocolSMS), @(UASNSProtocolSQS), @(UASNSProtocolApplication) ]
                                               stringValues:@[ @"http", @"https", @"email", @"email-json", @"sms", @"sqs", @"application" ]
                                               unknownValue:@(UASNSProtocolUnknown)];
}

@end

#pragma clang diagnostic pop