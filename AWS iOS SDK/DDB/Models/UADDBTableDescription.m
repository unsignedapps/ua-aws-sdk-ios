//
//  UADDBTableDescription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBTableDescription.h"
#import "UAAWSAdditionalAccessors.h"
#import "UADDBAttributeDefinition.h"
#import "UADDBKeySchema.h"
#import "UADDBProvisionedThroughputDescription.h"
#import "UADDBLocalSecondaryIndexDescription.h"
#import "UADDBGlobalSecondaryIndexDescription.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBTableDescription

@synthesize attributeDefinitions=_attributeDefinitions, tableName=_tableName, keySchema=_keySchema, tableStatus=_tableStatus, creationDateTime=_creationDateTime, provisionedThroughput=_provisionedThroughput, tableSizeBytes=_tableSizeBytes, itemCount=_itemCount, localSecondaryIndexes=_localSecondaryIndexes, globalSecondaryIndexes=_globalSecondaryIndexes;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(attributeDefinitionAtIndex:) propertyName:@"attributeDefinitions"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(keySchemaAtIndex:) propertyName:@"keySchema"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(localSecondaryIndexAtIndex:) propertyName:@"localSecondaryIndexes"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(globalSecondaryIndexAtIndex:) propertyName:@"globalSecondaryIndexes"];
	}
	return self;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"attributeDefinitions": @"AttributeDefinitions/AttributeDefinitions",
        @"tableName": @"TableName",
        @"keySchema": @"KeySchema/KeySchema",
        @"tableStatus": @"TableStatus",
        @"creationDateTime": @"CreationDateTime",
        @"provisionedThroughput": @"ProvisionedThroughput",
        @"tableSizeBytes": @"TableSizeBytes",
        @"itemCount": @"ItemCount",
        @"localSecondaryIndexes": @"LocalSecondaryIndexes/LocalSecondaryIndexes",
        @"globalSecondaryIndexes": @"GlobalSecondaryIndexes/GlobalSecondaryIndexes"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)attributeDefinitionsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UADDBAttributeDefinition class]];
}

+ (NSValueTransformer *)keySchemaJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UADDBKeySchema class]];
}

+ (NSValueTransformer *)tableStatusJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UADDBTableStatusCreating), @(UADDBTableStatusUpdating), @(UADDBTableStatusDeleting), @(UADDBTableStatusActive) ]
                                               stringValues:@[ @"CREATING", @"UPDATING", @"DELETING", @"ACTIVE" ]
                                               unknownValue:@(UADDBTableStatusUnknown)];
}

+ (NSValueTransformer *)creationDateTimeJSONTransformer
{
    return [NSValueTransformer UA_JSONTransformerForUnixTimestamp];
}

+ (NSValueTransformer *)provisionedThroughputJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UADDBProvisionedThroughputDescription class]];
}

+ (NSValueTransformer *)localSecondaryIndexesJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UADDBLocalSecondaryIndexDescription class]];
}

+ (NSValueTransformer *)globalSecondaryIndexesJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UADDBGlobalSecondaryIndexDescription class]];
}

@end

#pragma clang diagnostic pop