//
//  UADDBBatchWriteItemRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBBatchWriteItemRequest.h"
#import "UADDBBatchWriteItemResponse.h"

@interface UADDBBatchWriteItemRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

@implementation UADDBBatchWriteItemRequest

@synthesize xAmzTarget=_xAmzTarget, requestItems=_requestItems, returnConsumedCapacity=_returnConsumedCapacity, returnItemCollectionMetrics=_returnItemCollectionMetrics;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"DynamoDB_20120810.BatchWriteItem"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UADDBBatchWriteItemResponse class];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBRequest JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"xAmzTarget": [NSNull null],
        @"requestItems": @"RequestItems",
        @"returnConsumedCapacity": @"ReturnConsumedCapacity",
        @"returnItemCollectionMetrics": @"ReturnItemCollectionMetrics"
    }];
    return [keyPaths copy];
}

- (NSMutableArray *)requestItemForTableName:(NSString *)tableName
{
    if (self.requestItems == nil)
        return nil;

    return [self.requestItems objectForKey:tableName];
}

- (void)setXAmzTarget:(NSString *)xAmzTarget
{
	_xAmzTarget = xAmzTarget;
	
	if (![self.UA_dirtyProperties containsObject:@"xAmzTarget"])
		[self.UA_dirtyProperties addObject:@"xAmzTarget"];
}

- (void)setRequestItems:(NSMutableDictionary *)requestItems
{
	_requestItems = requestItems;
	
	if (![self.UA_dirtyProperties containsObject:@"requestItems"])
		[self.UA_dirtyProperties addObject:@"requestItems"];
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

+ (NSValueTransformer *)requestItemsJSONTransformer
{
    return [UAMTLValueTransformer UA_JSONDictionaryTransformerWithItemTransformer:nil];
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

- (void)setRequestItem:(NSArray *)requestItem forTableName:(NSString *)tableName
{
	if (self.requestItems == nil)
		[self setRequestItems:[NSMutableDictionary dictionary]];
	[self.requestItems setObject:requestItem forKey:tableName];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UADDBBatchWriteItemRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UADDBBatchWriteItemRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UADDBBatchWriteItemRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UADDBBatchWriteItemRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
