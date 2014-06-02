//
//  UADDBScanRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBScanRequest.h"
#import "UADDBScanResponse.h"
#import "UADDBScanFilter.h"

@interface UADDBScanRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

@implementation UADDBScanRequest

@synthesize xAmzTarget=_xAmzTarget, tableName=_tableName, attributesToGet=_attributesToGet, limit=_limit, select=_select, scanFilter=_scanFilter, exclusiveStartKey=_exclusiveStartKey, returnConsumedCapacity=_returnConsumedCapacity, totalSegments=_totalSegments, segment=_segment;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"DynamoDB_20120810.Scan"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UADDBScanResponse class];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBRequest JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"xAmzTarget": [NSNull null],
        @"tableName": @"TableName",
        @"attributesToGet": @"AttributesToGet/AttributesToGet",
        @"limit": @"Limit",
        @"select": @"Select",
        @"scanFilter": @"ScanFilter",
        @"exclusiveStartKey": @"ExclusiveStartKey",
        @"returnConsumedCapacity": @"ReturnConsumedCapacity",
        @"totalSegments": @"TotalSegments",
        @"segment": @"Segment"
    }];
    return [keyPaths copy];
}

- (NSString *)attributeToGetAtIndex:(NSUInteger)index
{
    if (self.attributesToGet == nil || index >= ([self.attributesToGet count]-1))
        return nil;

    return [self.attributesToGet objectAtIndex:index];
}

- (UADDBScanFilter *)scanFilterForAttributeName:(NSString *)attributeName
{
    if (self.scanFilter == nil)
        return nil;

    return [self.scanFilter objectForKey:attributeName];
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

+ (NSValueTransformer *)scanFilterJSONTransformer
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

- (void)setScanFilter:(UADDBScanFilter *)scanFilter forAttributeName:(NSString *)attributeName
{
	if (self.scanFilter == nil)
		[self setScanFilter:[NSMutableDictionary dictionary]];
	[self.scanFilter setObject:scanFilter forKey:attributeName];
}

- (void)setExclusiveStartKeyValue:(id)exclusiveStartKey forAttributeName:(NSString *)attributeName
{
	if (self.exclusiveStartKey == nil)
		[self setExclusiveStartKey:[NSMutableDictionary dictionary]];
	[self.exclusiveStartKey setObject:exclusiveStartKey forKey:attributeName];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UADDBScanRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UADDBScanRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UADDBScanRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UADDBScanRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
