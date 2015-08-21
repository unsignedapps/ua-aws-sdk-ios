//
//  UARDSEventSubscriptionResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSEventSubscriptionResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSEventSubscription.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSEventSubscriptionResponse

@synthesize eventSubscription=_eventSubscription;

+ (NSString *)XPathPrefix
{
    return @"./Rds:EventSubscriptionResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"eventSubscription": @"Rds:EventSubscription"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)eventSubscriptionXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UARDSEventSubscription class]];
}

@end

#pragma clang diagnostic pop