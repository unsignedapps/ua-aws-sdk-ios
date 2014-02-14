//
//  UASNSConfirmSubscriptionResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSConfirmSubscriptionResponse.h"

@implementation UASNSConfirmSubscriptionResponse

@synthesize subscriptionARN=_subscriptionARN;

+ (NSString *)XPathPrefix
{
    return @"./Sns:ConfirmSubscriptionResponse/Sns:ConfirmSubscriptionResponse/";
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
