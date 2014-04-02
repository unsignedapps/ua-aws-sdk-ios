//
//  UADDBBatchWriteItemResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBBatchWriteItemResponse.h"
#import "UADDBConsumedCapacity.h"

@implementation UADDBBatchWriteItemResponse

@synthesize unprocessedItems=_unprocessedItems, itemCollectionMetrics=_itemCollectionMetrics, consumedCapacity=_consumedCapacity;

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

- (NSArray *)unprocessedItemForTableName:(NSString *)tableName
{
    if (self.unprocessedItems == nil)
        return nil;

    return [self.unprocessedItems objectForKey:tableName];
}

- (NSArray *)itemCollectionMetricForTableName:(NSString *)tableName
{
    if (self.itemCollectionMetrics == nil)
        return nil;

    return [self.itemCollectionMetrics objectForKey:tableName];
}

- (UADDBConsumedCapacity *)consumedCapacityAtIndex:(NSUInteger)index
{
    if (self.consumedCapacity == nil || index >= ([self.consumedCapacity count]-1))
        return nil;

    return [self.consumedCapacity objectAtIndex:index];
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
