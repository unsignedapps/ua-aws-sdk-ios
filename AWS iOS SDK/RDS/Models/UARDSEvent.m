//
//  UARDSEvent.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSEvent.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSEvent

@synthesize sourceIdentifier=_sourceIdentifier, sourceType=_sourceType, message=_message, eventCategories=_eventCategories, date=_date;

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
        @"sourceIdentifier": @"Rds:SourceIdentifier",
        @"sourceType": @"Rds:SourceType",
        @"message": @"Rds:Message",
        @"eventCategories": @"Rds:EventCategories/Rds:EventCategory",
        @"date": @"Rds:Date"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)sourceTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSSourceTypeDbInstance), @(UARDSSourceTypeDbParameterGroup), @(UARDSSourceTypeDbSecurityGroup), @(UARDSSourceTypeDbSnapshot) ]
                                               stringValues:@[ @"db-instance", @"db-parameter-group", @"db-security-group", @"db-snapshot" ]
                                               unknownValue:@(UARDSSourceTypeUnknown)];
}

+ (NSValueTransformer *)dateQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
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

+ (NSValueTransformer *)dateXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

@end

#pragma clang diagnostic pop