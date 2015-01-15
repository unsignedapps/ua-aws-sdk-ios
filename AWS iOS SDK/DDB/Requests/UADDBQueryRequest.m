//
//  UADDBQueryRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBQueryRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UADDBQueryResponse.h"
#import "UADDBKeyCondition.h"
#import "UADDBQueryFilter.h"

@interface UADDBQueryRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBQueryRequest

@synthesize xAmzTarget=_xAmzTarget, tableName=_tableName, indexName=_indexName, select=_select, attributesToGet=_attributesToGet, limit=_limit, consistentRead=_consistentRead, keyConditions=_keyConditions, queryFilter=_queryFilter, conditionalOperator=_conditionalOperator, scanIndexForward=_scanIndexForward, exclusiveStartKey=_exclusiveStartKey, returnConsumedCapacity=_returnConsumedCapacity;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"DynamoDB_20120810.Query"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(attributeToGetAtIndex:) propertyName:@"attributesToGet"];
		[self UA_addDictionaryKeyValueAdditionalAccessorForSelector:@selector(keyConditionForAttributeName:) propertyName:@"keyConditions"];
		[self UA_addDDBKeyValueAdditionalAccessorForSelector:@selector(exclusiveStartKeyValueForAttributeName:) propertyName:@"exclusiveStartKey"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAttributeToGet:) propertyName:@"attributesToGet"];
		[self UA_addSetObjectForKeyAdditionalAccessorForSelector:@selector(setKeyCondition:forAttributeName:) propertyName:@"keyConditions"];
		[self UA_addSetObjectForKeyAdditionalAccessorForSelector:@selector(setExclusiveStartKeyValue:forAttributeName:) propertyName:@"exclusiveStartKey"];
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
        @"queryFilter": @"QueryFilter",
        @"conditionalOperator": @"ConditionalOperator",
        @"scanIndexForward": @"ScanIndexForward",
        @"exclusiveStartKey": @"ExclusiveStartKey",
        @"returnConsumedCapacity": @"ReturnConsumedCapacity"
    }];
    return [keyPaths copy];
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

+ (NSValueTransformer *)queryFilterJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UADDBQueryFilter class]];
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

/*#pragma mark - Invocation

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
*/
@end

#pragma clang diagnostic pop