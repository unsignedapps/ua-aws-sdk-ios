//
//  UARDSEventCategoriesMapList.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSEventCategoriesMapList.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSEventCategoriesMapList

@synthesize sourceType=_sourceType, eventCategories=_eventCategories;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(eventCategoryAtIndex:) propertyName:@"eventCategories"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addEventCategory:) propertyName:@"eventCategories"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"sourceType": @"Rds:SourceType",
        @"eventCategories": @"Rds:EventCategories/Rds:EventCategory"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)sourceTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSSourceTypeDbInstance), @(UARDSSourceTypeDbParameterGroup), @(UARDSSourceTypeDbSecurityGroup), @(UARDSSourceTypeDbSnapshot) ]
                                               stringValues:@[ @"db-instance", @"db-parameter-group", @"db-security-group", @"db-snapshot" ]
                                               unknownValue:@(UARDSSourceTypeUnknown)];
}

+ (NSValueTransformer *)sourceTypeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSSourceTypeDbInstance), @(UARDSSourceTypeDbParameterGroup), @(UARDSSourceTypeDbSecurityGroup), @(UARDSSourceTypeDbSnapshot) ]
                                               stringValues:@[ @"db-instance", @"db-parameter-group", @"db-security-group", @"db-snapshot" ]
                                               unknownValue:@(UARDSSourceTypeUnknown)];
}

+ (NSValueTransformer *)eventCategoriesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end

#pragma clang diagnostic pop