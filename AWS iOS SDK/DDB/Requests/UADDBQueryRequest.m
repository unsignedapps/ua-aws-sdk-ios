//
//  UADDBQueryRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBQueryRequest.h"
#import "UADDBQueryResponse.h"
#import "UADDBKeyCondition.h"

@interface UADDBQueryRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

@implementation UADDBQueryRequest

@synthesize xAmzTarget=_xAmzTarget, tableName=_tableName, indexName=_indexName, select=_select, attributesToGet=_attributesToGet, limit=_limit, consistentRead=_consistentRead, keyConditions=_keyConditions, scanIndexForward=_scanIndexForward, exclusiveStartKey=_exclusiveStartKey, returnConsumedCapacity=_returnConsumedCapacity;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"DynamoDB_20120810.Query"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UADDBQueryResponse class];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBRequest JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"xAmzTarget": [NSNull null],
        @"tableName": @"TableName",
        @"indexName": @"IndexName",
        @"select": @"Select",
        @"attributesToGet": @"AttributesToGet/AttributesToGet",
        @"limit": @"Limit",
        @"consistentRead": @"ConsistentRead",
        @"keyConditions": @"KeyConditions",
        @"scanIndexForward": @"ScanIndexForward",
        @"exclusiveStartKey": @"ExclusiveStartKey",
        @"returnConsumedCapacity": @"ReturnConsumedCapacity"
    }];
    return [keyPaths copy];
}

- (NSString *)attributeToGetAtIndex:(NSUInteger)index
{
    if (self.attributesToGet == nil || index >= ([self.attributesToGet count]-1))
        return nil;

    return [self.attributesToGet objectAtIndex:index];
}

- (UADDBKeyCondition *)keyConditionForAttributeName:(NSString *)attributeName
{
    if (self.keyConditions == nil)
        return nil;

    return [self.keyConditions objectForKey:attributeName];
}

- (NSMutableDictionary *)exclusiveStartKeyValueForAttributeName:(NSString *)attributeName
{
    if (self.exclusiveStartKey == nil)
        return nil;

    return [self.exclusiveStartKey objectForKey:attributeName];
}

- (void)setXAmzTarget:(NSString *)xAmzTarget
{
	_xAmzTarget = xAmzTarget;
	
	if (![self.UA_dirtyProperties containsObject:@"xAmzTarget"])
		[self.UA_dirtyProperties addObject:@"xAmzTarget"];
}

- (void)setTableName:(NSString *)tableName
{
	_tableName = tableName;
	
	if (![self.UA_dirtyProperties containsObject:@"tableName"])
		[self.UA_dirtyProperties addObject:@"tableName"];
}

- (void)setIndexName:(NSString *)indexName
{
	_indexName = indexName;
	
	if (![self.UA_dirtyProperties containsObject:@"indexName"])
		[self.UA_dirtyProperties addObject:@"indexName"];
}

- (void)setSelect:(UADDBSelectType)select
{
	_select = select;
	
	if (![self.UA_dirtyProperties containsObject:@"select"])
		[self.UA_dirtyProperties addObject:@"select"];
}

- (void)setAttributesToGet:(NSMutableArray *)attributesToGet
{
	_attributesToGet = attributesToGet;
	
	if (![self.UA_dirtyProperties containsObject:@"attributesToGet"])
		[self.UA_dirtyProperties addObject:@"attributesToGet"];
}

- (void)setLimit:(NSNumber *)limit
{
	_limit = limit;
	
	if (![self.UA_dirtyProperties containsObject:@"limit"])
		[self.UA_dirtyProperties addObject:@"limit"];
}

- (void)setConsistentRead:(BOOL)consistentRead
{
	_consistentRead = consistentRead;
	
	if (![self.UA_dirtyProperties containsObject:@"consistentRead"])
		[self.UA_dirtyProperties addObject:@"consistentRead"];
}

- (void)setKeyConditions:(NSMutableDictionary *)keyConditions
{
	_keyConditions = keyConditions;
	
	if (![self.UA_dirtyProperties containsObject:@"keyConditions"])
		[self.UA_dirtyProperties addObject:@"keyConditions"];
}

- (void)setScanIndexForward:(BOOL)scanIndexForward
{
	_scanIndexForward = scanIndexForward;
	
	if (![self.UA_dirtyProperties containsObject:@"scanIndexForward"])
		[self.UA_dirtyProperties addObject:@"scanIndexForward"];
}

- (void)setExclusiveStartKey:(NSMutableDictionary *)exclusiveStartKey
{
	_exclusiveStartKey = exclusiveStartKey;
	
	if (![self.UA_dirtyProperties containsObject:@"exclusiveStartKey"])
		[self.UA_dirtyProperties addObject:@"exclusiveStartKey"];
}

- (void)setReturnConsumedCapacity:(UADDBReturnConsumedCapacityType)returnConsumedCapacity
{
	_returnConsumedCapacity = returnConsumedCapacity;
	
	if (![self.UA_dirtyProperties containsObject:@"returnConsumedCapacity"])
		[self.UA_dirtyProperties addObject:@"returnConsumedCapacity"];
}

+ (NSValueTransformer *)selectJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UADDBSelectTypeAllAttributes), @(UADDBSelectTypeAllProjectedAttributes), @(UADDBSelectTypeSpecificAttributes), @(UADDBSelectTypeCount) ]
                                               stringValues:@[ @"ALL_ATTRIBUTES", @"ALL_PROJECTED_ATTRIBUTES", @"SPECIFIC_ATTRIBUTES", @"COUNT" ]
                                               unknownValue:@(UADDBSelectTypeUnknown)];
}

+ (NSValueTransformer *)keyConditionsJSONTransformer
{
    return [UAMTLValueTransformer UA_JSONDictionaryTransformerWithItemTransformer:nil];
}

+ (NSValueTransformer *)exclusiveStartKeyJSONTransformer
{
    return [NSValueTransformer UA_JSONDynamoDBDictionaryTransformer];
}

+ (NSValueTransformer *)returnConsumedCapacityJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UADDBReturnConsumedCapacityTypeIndexes), @(UADDBReturnConsumedCapacityTypeTotal), @(UADDBReturnConsumedCapacityTypeNone) ]
                                               stringValues:@[ @"INDEXES", @"TOTAL", @"NONE" ]
                                               unknownValue:@(UADDBReturnConsumedCapacityTypeUnknown)];
}

- (void)addAttributeToGet:(NSString *)attributeToGet
{
	if (self.attributesToGet == nil)
		[self setAttributesToGet:[NSMutableArray array]];
	[self.attributesToGet addObject:attributeToGet];
}

- (void)setKeyCondition:(UADDBKeyCondition *)keyCondition forAttributeName:(NSString *)attributeName
{
	if (self.keyConditions == nil)
		[self setKeyConditions:[NSMutableDictionary dictionary]];
	[self.keyConditions setObject:keyCondition forKey:attributeName];
}

- (void)setExclusiveStartKeyValue:(NSDictionary *)exclusiveStartKey forAttributeName:(NSString *)attributeName
{
	if (self.exclusiveStartKey == nil)
		[self setExclusiveStartKey:[NSMutableDictionary dictionary]];
	[self.exclusiveStartKey setObject:exclusiveStartKey forKey:attributeName];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UADDBQueryRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UADDBQueryRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UADDBQueryRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UADDBQueryRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
