//
//  UADDBBatchGetItemResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBBatchGetItemResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UADDBUnprocessedKey.h"
#import "UADDBConsumedCapacity.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBBatchGetItemResponse

@synthesize responses=_responses, unprocessedKeys=_unprocessedKeys, consumedCapacity=_consumedCapacity;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addDictionaryKeyValueAdditionalAccessorForSelector:@selector(responseForTableName:) propertyName:@"responses"];
		[self UA_addDictionaryKeyValueAdditionalAccessorForSelector:@selector(unprocessedKeyForTableName:) propertyName:@"unprocessedKeys"];
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
        @"responses": @"Responses",
        @"unprocessedKeys": @"UnprocessedKeys",
        @"consumedCapacity": @"ConsumedCapacity/ConsumedCapacity"
    }];
    return [keyPaths copy];
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

#pragma clang diagnostic pop