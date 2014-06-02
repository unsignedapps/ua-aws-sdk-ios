//
//  UADDBGlobalSecondaryIndexDescription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBGlobalSecondaryIndexDescription.h"
#import "UADDBKeySchema.h"
#import "UADDBProjection.h"
#import "UADDBProvisionedThroughputDescription.h"

@implementation UADDBGlobalSecondaryIndexDescription

@synthesize indexName=_indexName, keySchema=_keySchema, projection=_projection, indexStatus=_indexStatus, provisionedThroughput=_provisionedThroughput, indexSizeBytes=_indexSizeBytes, itemCount=_itemCount;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"indexName": @"IndexName",
        @"keySchema": @"KeySchema/KeySchema",
        @"projection": @"Projection",
        @"indexStatus": @"IndexStatus",
        @"provisionedThroughput": @"ProvisionedThroughput",
        @"indexSizeBytes": @"IndexSizeBytes",
        @"itemCount": @"ItemCount"
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

+ (NSValueTransformer *)indexStatusJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UADDBIndexStatusCreating), @(UADDBIndexStatusUpdating), @(UADDBIndexStatusDeleting), @(UADDBIndexStatusActive) ]
                                               stringValues:@[ @"CREATING", @"UPDATING", @"DELETING", @"ACTIVE" ]
                                               unknownValue:@(UADDBIndexStatusUnknown)];
}

+ (NSValueTransformer *)provisionedThroughputJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UADDBProvisionedThroughputDescription class]];
}

@end