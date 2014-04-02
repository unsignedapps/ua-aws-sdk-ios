//
//  UADDBUpdateTableRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBUpdateTableRequest.h"
#import "UADDBUpdateTableResponse.h"
#import "UADDBProvisionedThroughput.h"
#import "UADDBGlobalSecondaryIndexUpdate.h"

@interface UADDBUpdateTableRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

@implementation UADDBUpdateTableRequest

@synthesize xAmzTarget=_xAmzTarget, tableName=_tableName, provisionedThroughput=_provisionedThroughput, globalSecondaryIndexUpdates=_globalSecondaryIndexUpdates;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"DynamoDB_20120810.UpdateTable"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UADDBUpdateTableResponse class];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBRequest JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"xAmzTarget": [NSNull null],
        @"tableName": @"TableName",
        @"provisionedThroughput": @"ProvisionedThroughput",
        @"globalSecondaryIndexUpdates": @"GlobalSecondaryIndexUpdates/GlobalSecondaryIndexUpdates"
    }];
    return [keyPaths copy];
}

- (UADDBGlobalSecondaryIndexUpdate *)globalSecondaryIndexUpdateAtIndex:(NSUInteger)index
{
    if (self.globalSecondaryIndexUpdates == nil || index >= ([self.globalSecondaryIndexUpdates count]-1))
        return nil;

    return [self.globalSecondaryIndexUpdates objectAtIndex:index];
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

- (void)setProvisionedThroughput:(UADDBProvisionedThroughput *)provisionedThroughput
{
	_provisionedThroughput = provisionedThroughput;
	
	if (![self.UA_dirtyProperties containsObject:@"provisionedThroughput"])
		[self.UA_dirtyProperties addObject:@"provisionedThroughput"];
}

- (void)setGlobalSecondaryIndexUpdates:(NSMutableArray *)globalSecondaryIndexUpdates
{
	_globalSecondaryIndexUpdates = globalSecondaryIndexUpdates;
	
	if (![self.UA_dirtyProperties containsObject:@"globalSecondaryIndexUpdates"])
		[self.UA_dirtyProperties addObject:@"globalSecondaryIndexUpdates"];
}

+ (NSValueTransformer *)provisionedThroughputJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UADDBProvisionedThroughput class]];
}

+ (NSValueTransformer *)globalSecondaryIndexUpdatesJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UADDBGlobalSecondaryIndexUpdate class]];
}

- (void)addGlobalSecondaryIndexUpdate:(UADDBGlobalSecondaryIndexUpdate *)globalSecondaryIndexUpdate
{
	if (self.globalSecondaryIndexUpdates == nil)
		[self setGlobalSecondaryIndexUpdates:[NSMutableArray array]];
	[self.globalSecondaryIndexUpdates addObject:globalSecondaryIndexUpdate];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UADDBUpdateTableRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UADDBUpdateTableRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UADDBUpdateTableRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UADDBUpdateTableRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
