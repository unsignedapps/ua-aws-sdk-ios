//
//  UADDBItemCollectionMetrics.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBItemCollectionMetrics.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBItemCollectionMetrics

@synthesize itemCollectionKey=_itemCollectionKey, sizeEstimateRangeGB=_sizeEstimateRangeGB;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addDDBKeyValueAdditionalAccessorForSelector:@selector(itemCollectionKeyValueForAttributeName:) propertyName:@"itemCollectionKey"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(sizeEstimateRangeGBAtIndex:) propertyName:@"sizeEstimateRangeGB"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSizeEstimateRangeGB:) propertyName:@"sizeEstimateRangeGB"];
	}
	return self;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"itemCollectionKey": @"ItemCollectionKey",
        @"sizeEstimateRangeGB": @"SizeEstimateRangeGB"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)itemCollectionKeyJSONTransformer
{
    return [NSValueTransformer UA_JSONDynamoDBDictionaryTransformer];
}

@end

#pragma clang diagnostic pop