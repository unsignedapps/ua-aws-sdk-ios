//
//  UADDBBatchGetItemResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBBatchGetItemResponse.h"
#import "UADDBUnprocessedKey.h"
#import "UADDBConsumedCapacity.h"

@implementation UADDBBatchGetItemResponse

@synthesize responses=_responses, unprocessedKeys=_unprocessedKeys, consumedCapacity=_consumedCapacity;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBResponse JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"responses": @"Responses",
        @"unprocessedKeys": @"UnprocessedKeys",
        @"consumedCapacity": @"ConsumedCapacity/ConsumedCapacity"
    }];
    return [keyPaths copy];
}

- (NSDictionary *)responseForTableName:(NSString *)tableName
{
    if (self.responses == nil)
        return nil;

    return [self.responses objectForKey:tableName];
}

- (UADDBUnprocessedKey *)unprocessedKeyForTableName:(NSString *)tableName
{
    if (self.unprocessedKeys == nil)
        return nil;

    return [self.unprocessedKeys objectForKey:tableName];
}

- (UADDBConsumedCapacity *)consumedCapacityAtIndex:(NSUInteger)index
{
    if (self.consumedCapacity == nil || index >= ([self.consumedCapacity count]-1))
        return nil;

    return [self.consumedCapacity objectAtIndex:index];
}

+ (NSValueTransformer *)responsesJSONTransformer
{
    return [UAMTLValueTransformer UA_JSONDictionaryTransformerWithItemTransformer:[NSValueTransformer UA_JSONDynamoDBDictionaryTransformer]];
}

+ (NSValueTransformer *)unprocessedKeysJSONTransformer
{
    return [UAMTLValueTransformer UA_JSONDictionaryTransformerWithItemTransformer:nil];
}

+ (NSValueTransformer *)consumedCapacityJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UADDBConsumedCapacity class]];
}

@end
