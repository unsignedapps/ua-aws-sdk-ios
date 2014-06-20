//
//  UADDBUpdateItemRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBUpdateItemRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UADDBUpdateItemResponse.h"
#import "UADDBAttributeUpdate.h"
#import "UADDBExpectedItem.h"

@interface UADDBUpdateItemRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBUpdateItemRequest

@synthesize xAmzTarget=_xAmzTarget, tableName=_tableName, key=_key, attributeUpdates=_attributeUpdates, expected=_expected, returnValues=_returnValues, returnConsumedCapacity=_returnConsumedCapacity, returnItemCollectionMetrics=_returnItemCollectionMetrics;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"DynamoDB_20120810.UpdateItem"];
		
		[self UA_addDDBKeyValueAdditionalAccessorForSelector:@selector(keyValueForAttributeName:) propertyName:@"key"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(attributeUpdateAtIndex:) propertyName:@"attributeUpdates"];
		[self UA_addDictionaryKeyValueAdditionalAccessorForSelector:@selector(expectedForAttributeName:) propertyName:@"expected"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAttributeUpdate:) propertyName:@"attributeUpdates"];
		[self UA_addSetObjectForKeyAdditionalAccessorForSelector:@selector(setKeyValue:forAttributeName:) propertyName:@"key"];
		[self UA_addSetObjectForKeyAdditionalAccessorForSelector:@selector(setExpected:forAttributeName:) propertyName:@"expected"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UADDBUpdateItemResponse class];
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
        @"attributeUpdates": @"AttributeUpdates/AttributeUpdates",
        @"expected": @"Expected",
        @"returnValues": @"ReturnValues",
        @"returnConsumedCapacity": @"ReturnConsumedCapacity",
        @"returnItemCollectionMetrics": @"ReturnItemCollectionMetrics"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)keyJSONTransformer
{
    return [NSValueTransformer UA_JSONDynamoDBDictionaryTransformer];
}

+ (NSValueTransformer *)attributeUpdatesJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UADDBAttributeUpdate class]];
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

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UADDBUpdateItemRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UADDBUpdateItemRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UADDBUpdateItemRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UADDBUpdateItemRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop