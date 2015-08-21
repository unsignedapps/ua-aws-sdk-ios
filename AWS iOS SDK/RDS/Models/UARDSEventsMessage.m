//
//  UARDSEventsMessage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSEventsMessage.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSEvent.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSEventsMessage

@synthesize marker=_marker, events=_events;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(eventAtIndex:) propertyName:@"events"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addEvent:) propertyName:@"events"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./Rds:EventsMessage/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"marker": @"Rds:Marker",
        @"events": @"Rds:Events/Rds:Event"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)eventsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSEvent class]];
}

+ (NSValueTransformer *)eventsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSEvent class]];
}

@end

#pragma clang diagnostic pop