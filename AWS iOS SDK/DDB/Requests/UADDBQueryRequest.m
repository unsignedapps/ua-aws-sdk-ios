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

- (void)setExclusiveStartKeyValue:(id)exclusiveStartKey forAttributeName:(NSString *)attributeName
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