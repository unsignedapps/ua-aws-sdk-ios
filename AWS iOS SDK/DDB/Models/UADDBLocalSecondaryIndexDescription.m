//
//  UADDBLocalSecondaryIndexDescription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBLocalSecondaryIndexDescription.h"
#import "UAAWSAdditionalAccessors.h"
#import "UADDBKeySchema.h"
#import "UADDBProjection.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBLocalSecondaryIndexDescription

@synthesize indexName=_indexName, keySchema=_keySchema, projection=_projection, indexSizeBytes=_indexSizeBytes, itemCount=_itemCount;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(keySchemaAtIndex:) propertyName:@"keySchema"];
	}
	return self;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"indexName": @"IndexName",
        @"keySchema": @"KeySchema/KeySchema",
        @"projection": @"Projection",
        @"indexSizeBytes": @"IndexSizeBytes",
        @"itemCount": @"ItemCount"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)keySchemaJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UADDBKeySchema class]];
}

+ (NSValueTransformer *)projectionJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UADDBProjection class]];
}

@end

#pragma clang diagnostic pop