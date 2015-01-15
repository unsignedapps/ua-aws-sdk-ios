//
//  UADDBBatchGetItemRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBBatchGetItemRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UADDBBatchGetItemResponse.h"
#import "UADDBRequestItem.h"

@interface UADDBBatchGetItemRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBBatchGetItemRequest

@synthesize xAmzTarget=_xAmzTarget, requestItems=_requestItems, returnConsumedCapacity=_returnConsumedCapacity;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"DynamoDB_20120810.BatchGetItem"];
		
		[self UA_addDictionaryKeyValueAdditionalAccessorForSelector:@selector(requestItemForTableName:) propertyName:@"requestItems"];
		[self UA_addSetObjectForKeyAdditionalAccessorForSelector:@selector(setRequestItem:forTableName:) propertyName:@"requestItems"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UADDBBatchGetItemResponse class];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBRequest JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"xAmzTarget": [NSNull null],
        @"requestItems": @"RequestItems",
        @"returnConsumedCapacity": @"ReturnConsumedCapacity"
    }];
    return [keyPaths copy];
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

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UADDBBatchGetItemRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UADDBBatchGetItemRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UADDBBatchGetItemRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UADDBBatchGetItemRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop