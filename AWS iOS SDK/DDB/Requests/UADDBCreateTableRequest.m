//
//  UADDBCreateTableRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBCreateTableRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UADDBCreateTableResponse.h"
#import "UADDBAttributeDefinition.h"
#import "UADDBKeySchema.h"
#import "UADDBLocalSecondaryIndex.h"
#import "UADDBGlobalSecondaryIndex.h"
#import "UADDBProvisionedThroughput.h"

@interface UADDBCreateTableRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBCreateTableRequest

@synthesize xAmzTarget=_xAmzTarget, attributeDefinitions=_attributeDefinitions, tableName=_tableName, keySchema=_keySchema, localSecondaryIndexes=_localSecondaryIndexes, globalSecondaryIndexes=_globalSecondaryIndexes, provisionedThroughput=_provisionedThroughput;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"DynamoDB_20120810.CreateTable"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(attributeDefinitionAtIndex:) propertyName:@"attributeDefinitions"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(keySchemaAtIndex:) propertyName:@"keySchema"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(localSecondaryIndexAtIndex:) propertyName:@"localSecondaryIndexes"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(globalSecondaryIndexAtIndex:) propertyName:@"globalSecondaryIndexes"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAttributeDefinition:) propertyName:@"attributeDefinitions"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addKeySchema:) propertyName:@"keySchema"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addLocalSecondaryIndex:) propertyName:@"localSecondaryIndexes"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addGlobalSecondaryIndex:) propertyName:@"globalSecondaryIndexes"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UADDBCreateTableResponse class];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBRequest JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"xAmzTarget": [NSNull null],
        @"attributeDefinitions": @"AttributeDefinitions/AttributeDefinitions",
        @"tableName": @"TableName",
        @"keySchema": @"KeySchema/KeySchema",
        @"localSecondaryIndexes": @"LocalSecondaryIndexes/LocalSecondaryIndexes",
        @"globalSecondaryIndexes": @"GlobalSecondaryIndexes/GlobalSecondaryIndexes",
        @"provisionedThroughput": @"ProvisionedThroughput"
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

+ (NSValueTransformer *)localSecondaryIndexesJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UADDBLocalSecondaryIndex class]];
}

+ (NSValueTransformer *)globalSecondaryIndexesJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UADDBGlobalSecondaryIndex class]];
}

+ (NSValueTransformer *)provisionedThroughputJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UADDBProvisionedThroughput class]];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UADDBCreateTableRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UADDBCreateTableRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UADDBCreateTableRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UADDBCreateTableRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop