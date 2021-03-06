//
//  UASNSListSubscriptionsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSListSubscriptionsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASNSSubscription.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASNSListSubscriptionsResponse

@synthesize subscriptions=_subscriptions, nextToken=_nextToken;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(subscriptionAtIndex:) propertyName:@"subscriptions"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSubscription:) propertyName:@"subscriptions"];
	}
	return self;
}

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
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UASNSSubscription class]];
}

@end

#pragma clang diagnostic pop