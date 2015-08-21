//
//  UARDSEventCategoriesMessage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSEventCategoriesMessage.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSEventCategoriesMapList.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSEventCategoriesMessage

@synthesize eventCategoriesMapList=_eventCategoriesMapList;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(eventCategoriesMapListAtIndex:) propertyName:@"eventCategoriesMapList"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addEventCategoriesMapList:) propertyName:@"eventCategoriesMapList"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./Rds:EventCategoriesMessage/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"eventCategoriesMapList": @"Rds:EventCategoriesMapList/Rds:EventCategoriesMap"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)eventCategoriesMapListQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSEventCategoriesMapList class]];
}

+ (NSValueTransformer *)eventCategoriesMapListXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSEventCategoriesMapList class]];
}

@end

#pragma clang diagnostic pop