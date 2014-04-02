//
//  UADDBPutItemRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBPutItemRequest.h"
#import "UADDBPutItemResponse.h"
#import "UADDBExpectedItem.h"

@interface UADDBPutItemRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

@implementation UADDBPutItemRequest

@synthesize xAmzTarget=_xAmzTarget, tableName=_tableName, item=_item, expected=_expected, returnValues=_returnValues, returnConsumedCapacity=_returnConsumedCapacity, returnItemCollectionMetrics=_returnItemCollectionMetrics;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"DynamoDB_20120810.PutItem"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UADDBPutItemResponse class];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBRequest JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"xAmzTarget": [NSNull null],
        @"tableName": @"TableName",
        @"item": @"Item",
        @"expected": @"Expected",
        @"returnValues": @"ReturnValues",
        @"returnConsumedCapacity": @"ReturnConsumedCapacity",
        @"returnItemCollectionMetrics": @"ReturnItemCollectionMetrics"
    }];
    return [keyPaths copy];
}

- (NSMutableDictionary *)itemValueForAttributeName:(NSString *)attributeName
{
    if (self.item == nil)
        return nil;

    return [self.item objectForKey:attributeName];
}

- (UADDBExpectedItem *)expectedForAttributeName:(NSString *)attributeName
{
    if (self.expected == nil)
        return nil;

    return [self.expected objectForKey:attributeName];
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

- (void)setItem:(NSMutableDictionary *)item
{
	_item = item;
	
	if (![self.UA_dirtyProperties containsObject:@"item"])
		[self.UA_dirtyProperties addObject:@"item"];
}

- (void)setExpected:(NSMutableDictionary *)expected
{
	_expected = expected;
	
	if (![self.UA_dirtyProperties containsObject:@"expected"])
		[self.UA_dirtyProperties addObject:@"expected"];
}

- (void)setReturnValues:(UADDBReturnValueType)returnValues
{
	_returnValues = returnValues;
	
	if (![self.UA_dirtyProperties containsObject:@"returnValues"])
		[self.UA_dirtyProperties addObject:@"returnValues"];
}

- (void)setReturnConsumedCapacity:(UADDBReturnConsumedCapacityType)returnConsumedCapacity
{
	_returnConsumedCapacity = returnConsumedCapacity;
	
	if (![self.UA_dirtyProperties containsObject:@"returnConsumedCapacity"])
		[self.UA_dirtyProperties addObject:@"returnConsumedCapacity"];
}

- (void)setReturnItemCollectionMetrics:(UADDBReturnItemCollectionMetricsType)returnItemCollectionMetrics
{
	_returnItemCollectionMetrics = returnItemCollectionMetrics;
	
	if (![self.UA_dirtyProperties containsObject:@"returnItemCollectionMetrics"])
		[self.UA_dirtyProperties addObject:@"returnItemCollectionMetrics"];
}

+ (NSValueTransformer *)itemJSONTransformer
{
    return [NSValueTransformer UA_JSONDynamoDBDictionaryTransformer];
}

+ (NSValueTransformer *)expectedJSONTransformer
{
    return [UAMTLValueTransformer UA_JSONDictionaryTransformerWithItemTransformer:nil];
}

+ (NSValueTransformer *)returnValuesJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UADDBReturnValueTypeNone), @(UADDBReturnValueTypeAllOld), @(UADDBReturnValueTypeUpdatedOld), @(UADDBReturnValueTypeAllNew), @(UADDBReturnValueTypeUpdatedNew) ]
                                               stringValues:@[ @"NONE", @"ALL_OLD", @"UPDATED_OLD", @"ALL_NEW", @"UPDATED_NEW" ]
                                               unknownValue:@(UADDBReturnValueTypeUnknown)];
}

+ (NSValueTransformer *)returnConsumedCapacityJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UADDBReturnConsumedCapacityTypeIndexes), @(UADDBReturnConsumedCapacityTypeTotal), @(UADDBReturnConsumedCapacityTypeNone) ]
                                               stringValues:@[ @"INDEXES", @"TOTAL", @"NONE" ]
                                               unknownValue:@(UADDBReturnConsumedCapacityTypeUnknown)];
}

+ (NSValueTransformer *)returnItemCollectionMetricsJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UADDBReturnItemCollectionMetricsTypeSize), @(UADDBReturnItemCollectionMetricsTypeNone) ]
                                               stringValues:@[ @"SIZE", @"NONE" ]
                                               unknownValue:@(UADDBReturnItemCollectionMetricsTypeUnknown)];
}

- (void)setItemValue:(id)item forAttributeName:(NSString *)attributeName
{
	if (self.item == nil)
		[self setItem:[NSMutableDictionary dictionary]];
	[self.item setObject:item forKey:attributeName];
}

- (void)setExpected:(UADDBExpectedItem *)expected forAttributeName:(NSString *)attributeName
{
	if (self.expected == nil)
		[self setExpected:[NSMutableDictionary dictionary]];
	[self.expected setObject:expected forKey:attributeName];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UADDBPutItemRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UADDBPutItemRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UADDBPutItemRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UADDBPutItemRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
