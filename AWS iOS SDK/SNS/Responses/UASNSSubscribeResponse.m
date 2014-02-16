//
//  UASNSSubscribeResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSSubscribeResponse.h"

@implementation UASNSSubscribeResponse

@synthesize subscriptionARN=_subscriptionARN;

+ (NSString *)XPathPrefix
{
    return @"./Sns:SubscribeResponse/Sns:SubscribeResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"subscriptionARN": @"Sns:SubscriptionArn"
    }];
    return [keyPaths copy];
}

@end
