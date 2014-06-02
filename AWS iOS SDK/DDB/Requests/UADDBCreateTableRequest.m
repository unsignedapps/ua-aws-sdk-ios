//
//  UADDBCreateTableRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBCreateTableRequest.h"
#import "UADDBCreateTableResponse.h"
#import "UADDBAttributeDefinition.h"
#import "UADDBKeySchema.h"
#import "UADDBLocalSecondaryIndex.h"
#import "UADDBGlobalSecondaryIndex.h"
#import "UADDBProvisionedThroughput.h"

@interface UADDBCreateTableRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

@implementation UADDBCreateTableRequest

@synthesize xAmzTarget=_xAmzTarget, attributeDefinitions=_attributeDefinitions, tableName=_tableName, keySchema=_keySchema, localSecondaryIndexes=_localSecondaryIndexes, globalSecondaryIndexes=_globalSecondaryIndexes, provisionedThroughput=_provisionedThroughput;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"DynamoDB_20120810.CreateTable"];
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

- (UADDBAttributeDefinition *)attributeDefinitionAtIndex:(NSUInteger)index
{
    if (self.attributeDefinitions == nil || index >= ([self.attributeDefinitions count]-1))
        return nil;

    return [self.attributeDefinitions objectAtIndex:index];
}

- (UADDBKeySchema *)keySchemaAtIndex:(NSUInteger)index
{
    if (self.keySchema == nil || index >= ([self.keySchema count]-1))
        return nil;

    return [self.keySchema objectAtIndex:index];
}

- (UADDBLocalSecondaryIndex *)localSecondaryIndexAtIndex:(NSUInteger)index
{
    if (self.localSecondaryIndexes == nil || index >= ([self.localSecondaryIndexes count]-1))
        return nil;

    return [self.localSecondaryIndexes objectAtIndex:index];
}

- (UADDBGlobalSecondaryIndex *)globalSecondaryIndexAtIndex:(NSUInteger)index
{
    if (self.globalSecondaryIndexes == nil || index >= ([self.globalSecondaryIndexes count]-1))
        return nil;

    return [self.globalSecondaryIndexes objectAtIndex:index];
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

- (void)addAttributeDefinition:(UADDBAttributeDefinition *)attributeDefinition
{
	if (self.attributeDefinitions == nil)
		[self setAttributeDefinitions:[NSMutableArray array]];
	[self.attributeDefinitions addObject:attributeDefinition];
}

- (void)addKeySchema:(UADDBKeySchema *)keySchema
{
	if (self.keySchema == nil)
		[self setKeySchema:[NSMutableArray array]];
	[self.keySchema addObject:keySchema];
}

- (void)addLocalSecondaryIndex:(UADDBLocalSecondaryIndex *)localSecondaryIndex
{
	if (self.localSecondaryIndexes == nil)
		[self setLocalSecondaryIndexes:[NSMutableArray array]];
	[self.localSecondaryIndexes addObject:localSecondaryIndex];
}

- (void)addGlobalSecondaryIndex:(UADDBGlobalSecondaryIndex *)globalSecondaryIndex
{
	if (self.globalSecondaryIndexes == nil)
		[self setGlobalSecondaryIndexes:[NSMutableArray array]];
	[self.globalSecondaryIndexes addObject:globalSecondaryIndex];
}

#pragma mark - Invocation

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

@end
