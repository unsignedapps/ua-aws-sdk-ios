//
//  UADDBGetItemRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBGetItemRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UADDBGetItemResponse.h"

@interface UADDBGetItemRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBGetItemRequest

@synthesize xAmzTarget=_xAmzTarget, tableName=_tableName, key=_key, attributesToGet=_attributesToGet, consistentRead=_consistentRead, returnConsumedCapacity=_returnConsumedCapacity;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"DynamoDB_20120810.GetItem"];
		
		[self UA_addDDBKeyValueAdditionalAccessorForSelector:@selector(keyValueForAttributeName:) propertyName:@"key"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(attributeToGetAtIndex:) propertyName:@"attributesToGet"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAttributeToGet:) propertyName:@"attributesToGet"];
		[self UA_addSetObjectForKeyAdditionalAccessorForSelector:@selector(setKeyValue:forAttributeName:) propertyName:@"key"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UADDBGetItemResponse class];
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
        @"attributesToGet": @"AttributesToGet/AttributesToGet",
        @"consistentRead": @"ConsistentRead",
        @"returnConsumedCapacity": @"ReturnConsumedCapacity"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)keyJSONTransformer
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

- (void)invokeWithOwner:(id)owner completionBlock:(UADDBGetItemRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UADDBGetItemRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UADDBGetItemRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UADDBGetItemRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop