//
//  UADDBConsumedCapacity.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBConsumedCapacity.h"
#import "UAAWSAdditionalAccessors.h"
#import "UADDBCapacity.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBConsumedCapacity

@synthesize tableName=_tableName, capacityUnits=_capacityUnits, table=_table, localSecondaryIndexes=_localSecondaryIndexes, globalSecondaryIndexes=_globalSecondaryIndexes;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addDictionaryKeyValueAdditionalAccessorForSelector:@selector(localSecondaryIndexForIndexName:) propertyName:@"localSecondaryIndexes"];
		[self UA_addDictionaryKeyValueAdditionalAccessorForSelector:@selector(globalSecondaryIndexForIndexName:) propertyName:@"globalSecondaryIndexes"];
	}
	return self;
}

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

#pragma clang diagnostic pop