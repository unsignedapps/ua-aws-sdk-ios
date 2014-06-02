//
//  UADDBDeleteItemRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBDeleteItemRequest.h"
#import "UADDBDeleteItemResponse.h"
#import "UADDBExpectedItem.h"

@interface UADDBDeleteItemRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

@implementation UADDBDeleteItemRequest

@synthesize xAmzTarget=_xAmzTarget, tableName=_tableName, key=_key, expected=_expected, returnValues=_returnValues, returnConsumedCapacity=_returnConsumedCapacity, returnItemCollectionMetrics=_returnItemCollectionMetrics;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"DynamoDB_20120810.DeleteItem"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UADDBDeleteItemResponse class];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBRequest JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"xAmzTarget": [NSNull null],
        @"tableName": @"TableName",
        @"key": @"Key",
        @"expected": @"Expected",
        @"returnValues": @"ReturnValues",
        @"returnConsumedCapacity": @"ReturnConsumedCapacity",
        @"returnItemCollectionMetrics": @"ReturnItemCollectionMetrics"
    }];
    return [keyPaths copy];
}

- (NSMutableDictionary *)keyValueForAttributeName:(NSString *)attributeName
{
    if (self.key == nil)
        return nil;

    return [self.key objectForKey:attributeName];
}

- (UADDBExpectedItem *)expectedForAttributeName:(NSString *)attributeName
{
    if (self.expected == nil)
        return nil;

    return [self.expected objectForKey:attributeName];
}

+ (NSValueTransformer *)keyJSONTransformer
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

- (void)setKeyValue:(id)key forAttributeName:(NSString *)attributeName
{
	if (self.key == nil)
		[self setKey:[NSMutableDictionary dictionary]];
	[self.key setObject:key forKey:attributeName];
}

- (void)setExpected:(UADDBExpectedItem *)expected forAttributeName:(NSString *)attributeName
{
	if (self.expected == nil)
		[self setExpected:[NSMutableDictionary dictionary]];
	[self.expected setObject:expected forKey:attributeName];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UADDBDeleteItemRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UADDBDeleteItemRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UADDBDeleteItemRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UADDBDeleteItemRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end