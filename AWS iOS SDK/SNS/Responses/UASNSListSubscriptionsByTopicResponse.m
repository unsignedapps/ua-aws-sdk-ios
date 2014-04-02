//
//  UASNSListSubscriptionsByTopicResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSListSubscriptionsByTopicResponse.h"
#import "UASNSSubscription.h"

@implementation UASNSListSubscriptionsByTopicResponse

@synthesize subscriptions=_subscriptions, nextToken=_nextToken;

+ (NSString *)XPathPrefix
{
    return @"./Sns:ListSubscriptionsByTopicResponse/Sns:ListSubscriptionsByTopicResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"subscriptions": @"Sns:Subscriptions/Sns:member",
        @"nextToken": @"Sns:NextToken"
    }];
    return [keyPaths copy];
}

- (UASNSSubscription *)subscriptionAtIndex:(NSUInteger)index
{
    if (self.subscriptions == nil || index >= ([self.subscriptions count]-1))
        return nil;

    return [self.subscriptions objectAtIndex:index];
}

+ (NSValueTransformer *)subscriptionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UASNSSubscription class]];
}

@end
