//
//  UADDBPutItemResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBPutItemResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UADDBConsumedCapacity.h"
#import "UADDBItemCollectionMetrics.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBPutItemResponse

@synthesize attributes=_attributes, consumedCapacity=_consumedCapacity, itemCollectionMetrics=_itemCollectionMetrics;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addDDBKeyValueAdditionalAccessorForSelector:@selector(attributeValueForAttributeName:) propertyName:@"attributes"];
	}
	return self;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBResponse JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"attributes": @"Attributes",
        @"consumedCapacity": @"ConsumedCapacity",
        @"itemCollectionMetrics": @"ItemCollectionMetrics"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)attributesJSONTransformer
{
    return [NSValueTransformer UA_JSONDynamoDBDictionaryTransformer];
}

+ (NSValueTransformer *)consumedCapacityJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UADDBConsumedCapacity class]];
}

+ (NSValueTransformer *)itemCollectionMetricsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UADDBItemCollectionMetrics class]];
}

@end

#pragma clang diagnostic pop