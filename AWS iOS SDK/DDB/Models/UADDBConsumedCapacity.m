//
//  UADDBConsumedCapacity.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBConsumedCapacity.h"
#import "UADDBCapacity.h"

@implementation UADDBConsumedCapacity

@synthesize tableName=_tableName, capacityUnits=_capacityUnits, table=_table, localSecondaryIndexes=_localSecondaryIndexes, globalSecondaryIndexes=_globalSecondaryIndexes;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"tableName": @"TableName",
        @"capacityUnits": @"CapacityUnits",
        @"table": @"Table",
        @"localSecondaryIndexes": @"LocalSecondaryIndexes",
        @"globalSecondaryIndexes": @"GlobalSecondaryIndexes"
    }];
    return [keyPaths copy];
}

- (UADDBCapacity *)localSecondaryIndexForIndexName:(NSString *)indexName
{
    if (self.localSecondaryIndexes == nil)
        return nil;

    return [self.localSecondaryIndexes objectForKey:indexName];
}

- (UADDBCapacity *)globalSecondaryIndexForIndexName:(NSString *)indexName
{
    if (self.globalSecondaryIndexes == nil)
        return nil;

    return [self.globalSecondaryIndexes objectForKey:indexName];
}

+ (NSValueTransformer *)tableJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UADDBCapacity class]];
}

+ (NSValueTransformer *)localSecondaryIndexesJSONTransformer
{
    return [UAMTLValueTransformer UA_JSONDictionaryTransformerWithItemTransformer:nil];
}

+ (NSValueTransformer *)globalSecondaryIndexesJSONTransformer
{
    return [UAMTLValueTransformer UA_JSONDictionaryTransformerWithItemTransformer:nil];
}

@end
