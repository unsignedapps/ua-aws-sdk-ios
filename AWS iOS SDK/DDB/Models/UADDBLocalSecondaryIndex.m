//
//  UADDBLocalSecondaryIndex.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBLocalSecondaryIndex.h"
#import "UADDBKeySchema.h"
#import "UADDBProjection.h"

@implementation UADDBLocalSecondaryIndex

@synthesize indexName=_indexName, keySchema=_keySchema, projection=_projection;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"indexName": @"IndexName",
        @"keySchema": @"KeySchema/KeySchema",
        @"projection": @"Projection"
    }];
    return [keyPaths copy];
}

- (UADDBKeySchema *)keySchemaAtIndex:(NSUInteger)index
{
    if (self.keySchema == nil || index >= ([self.keySchema count]-1))
        return nil;

    return [self.keySchema objectAtIndex:index];
}

- (void)setIndexName:(NSString *)indexName
{
	_indexName = indexName;
	
	if (![self.UA_dirtyProperties containsObject:@"indexName"])
		[self.UA_dirtyProperties addObject:@"indexName"];
}

- (void)setKeySchema:(NSMutableArray *)keySchema
{
	_keySchema = keySchema;
	
	if (![self.UA_dirtyProperties containsObject:@"keySchema"])
		[self.UA_dirtyProperties addObject:@"keySchema"];
}

- (void)setProjection:(UADDBProjection *)projection
{
	_projection = projection;
	
	if (![self.UA_dirtyProperties containsObject:@"projection"])
		[self.UA_dirtyProperties addObject:@"projection"];
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
