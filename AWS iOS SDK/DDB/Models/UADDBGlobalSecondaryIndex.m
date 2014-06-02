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
