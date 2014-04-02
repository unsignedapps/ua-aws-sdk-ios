//
//  UADDBQueryResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBQueryResponse.h"
#import "UADDBConsumedCapacity.h"

@implementation UADDBQueryResponse

@synthesize items=_items, count=_count, lastEvaluatedKey=_lastEvaluatedKey, consumedCapacity=_consumedCapacity;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBResponse JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"items": @"Items/Items",
        @"count": @"Count",
        @"lastEvaluatedKey": @"LastEvaluatedKey",
        @"consumedCapacity": @"ConsumedCapacity"
    }];
    return [keyPaths copy];
}

- (NSDictionary *)itemAtIndex:(NSUInteger)index
{
    if (self.items == nil || index >= ([self.items count]-1))
        return nil;

    return [self.items objectAtIndex:index];
}

- (NSDictionary *)lastEvaluatedKeyValueForAttributeName:(NSString *)attributeName
{
    if (self.lastEvaluatedKey == nil)
        return nil;

    return [self.lastEvaluatedKey objectForKey:attributeName];
}

+ (NSValueTransformer *)lastEvaluatedKeyJSONTransformer
{
    return [NSValueTransformer UA_JSONDynamoDBDictionaryTransformer];
}

+ (NSValueTransformer *)consumedCapacityJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UADDBConsumedCapacity class]];
}

@end
