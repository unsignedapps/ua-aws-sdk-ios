//
//  UASNSConfirmSubscriptionResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSConfirmSubscriptionResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASNSConfirmSubscriptionResponse

@synthesize subscriptionARN=_subscriptionARN;

+ (NSString *)XPathPrefix
{
    return @"./Sns:ConfirmSubscriptionResponse/Sns:ConfirmSubscriptionResult/";
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

#pragma clang diagnostic pop