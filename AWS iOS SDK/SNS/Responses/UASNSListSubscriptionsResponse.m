//
//  UASNSListSubscriptionsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSListSubscriptionsResponse.h"
#import "UASNSSubscription.h"

@implementation UASNSListSubscriptionsResponse

@synthesize subscriptions=_subscriptions, nextToken=_nextToken;

+ (NSString *)XPathPrefix
{
    return @"./Sns:ListSubscriptionsResponse/Sns:ListSubscriptionsResult/";
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

+ (NSValueTransformer *)subscriptionsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UASNSSubscription class]];
}

@end
