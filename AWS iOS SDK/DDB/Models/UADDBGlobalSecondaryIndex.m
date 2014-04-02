//
//  UADDBGlobalSecondaryIndex.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBGlobalSecondaryIndex.h"
#import "UADDBKeySchema.h"
#import "UADDBProjection.h"
#import "UADDBProvisionedThroughput.h"

@implementation UADDBGlobalSecondaryIndex

@synthesize indexName=_indexName, keySchema=_keySchema, projection=_projection, provisionedThroughput=_provisionedThroughput;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"indexName": @"IndexName",
        @"keySchema": @"KeySchema/KeySchema",
        @"projection": @"Projection",
        @"provisionedThroughput": @"ProvisionedThroughput"
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

- (void)setProvisionedThroughput:(UADDBProvisionedThroughput *)provisionedThroughput
{
	_provisionedThroughput = provisionedThroughput;
	
	if (![self.UA_dirtyProperties containsObject:@"provisionedThroughput"])
		[self.UA_dirtyProperties addObject:@"provisionedThroughput"];
}

+ (NSValueTransformer *)keySchemaJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UADDBKeySchema class]];
}

+ (NSValueTransformer *)projectionJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UADDBProjection class]];
}

+ (NSValueTransformer *)provisionedThroughputJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UADDBProvisionedThroughput class]];
}

@end
