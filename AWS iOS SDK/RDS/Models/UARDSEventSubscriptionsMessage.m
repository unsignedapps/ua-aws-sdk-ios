//
//  UARDSEventSubscriptionsMessage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSEventSubscriptionsMessage.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSEventSubscriptionsList.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSEventSubscriptionsMessage

@synthesize marker=_marker, eventSubscriptionsList=_eventSubscriptionsList;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(eventSubscriptionsListAtIndex:) propertyName:@"eventSubscriptionsList"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addEventSubscriptionsList:) propertyName:@"eventSubscriptionsList"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./Rds:EventSubscriptionsMessage/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"marker": @"Rds:Marker",
        @"eventSubscriptionsList": @"Rds:EventSubscriptionsList/Rds:EventSubscription"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)eventSubscriptionsListQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSEventSubscriptionsList class]];
}

+ (NSValueTransformer *)eventSubscriptionsListXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSEventSubscriptionsList class]];
}

@end

#pragma clang diagnostic pop