//
//  UADDBGlobalSecondaryIndexDescription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBGlobalSecondaryIndexDescription.h"
#import "UAAWSAdditionalAccessors.h"
#import "UADDBKeySchema.h"
#import "UADDBProjection.h"
#import "UADDBProvisionedThroughputDescription.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBGlobalSecondaryIndexDescription

@synthesize indexName=_indexName, keySchema=_keySchema, projection=_projection, indexStatus=_indexStatus, provisionedThroughput=_provisionedThroughput, indexSizeBytes=_indexSizeBytes, itemCount=_itemCount;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(keySchemaAtIndex:) propertyName:@"keySchema"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addKeySchema:) propertyName:@"keySchema"];
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
        @"keySchema": @"KeySchema",
        @"projection": @"Projection",
        @"indexStatus": @"IndexStatus",
        @"provisionedThroughput": @"ProvisionedThroughput",
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

#pragma clang diagnostic pop