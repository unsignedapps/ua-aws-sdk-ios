//
//  UADDBQueryResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBQueryResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UADDBConsumedCapacity.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBQueryResponse

@synthesize items=_items, count=_count, scannedCount=_scannedCount, lastEvaluatedKey=_lastEvaluatedKey, consumedCapacity=_consumedCapacity;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(itemAtIndex:) propertyName:@"items"];
		[self UA_addDDBKeyValueAdditionalAccessorForSelector:@selector(lastEvaluatedKeyValueForAttributeName:) propertyName:@"lastEvaluatedKey"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addItem:) propertyName:@"items"];
	}
	return self;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBResponse JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"items": @"Items/Items",
        @"count": @"Count",
        @"scannedCount": @"ScannedCount",
        @"lastEvaluatedKey": @"LastEvaluatedKey",
        @"consumedCapacity": @"ConsumedCapacity"
    }];
    return [keyPaths copy];
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

#pragma clang diagnostic pop