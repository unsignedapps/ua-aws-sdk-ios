//
//  UADDBBatchWriteItemResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBBatchWriteItemResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UADDBConsumedCapacity.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBBatchWriteItemResponse

@synthesize unprocessedItems=_unprocessedItems, itemCollectionMetrics=_itemCollectionMetrics, consumedCapacity=_consumedCapacity;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addDictionaryKeyValueAdditionalAccessorForSelector:@selector(unprocessedItemForTableName:) propertyName:@"unprocessedItems"];
		[self UA_addDictionaryKeyValueAdditionalAccessorForSelector:@selector(itemCollectionMetricForTableName:) propertyName:@"itemCollectionMetrics"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(consumedCapacityAtIndex:) propertyName:@"consumedCapacity"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addConsumedCapacity:) propertyName:@"consumedCapacity"];
	}
	return self;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBResponse JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"unprocessedItems": @"UnprocessedItems",
        @"itemCollectionMetrics": @"ItemCollectionMetrics",
        @"consumedCapacity": @"ConsumedCapacity/ConsumedCapacity"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)unprocessedItemsJSONTransformer
{
    return [UAMTLValueTransformer UA_JSONDictionaryTransformerWithItemTransformer:nil];
}

+ (NSValueTransformer *)itemCollectionMetricsJSONTransformer
{
    return [UAMTLValueTransformer UA_JSONDictionaryTransformerWithItemTransformer:nil];
}

+ (NSValueTransformer *)consumedCapacityJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UADDBConsumedCapacity class]];
}

@end

#pragma clang diagnostic pop