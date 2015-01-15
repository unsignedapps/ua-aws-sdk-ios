//
//  UADDBUpdateTableRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBUpdateTableRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UADDBUpdateTableResponse.h"
#import "UADDBProvisionedThroughput.h"
#import "UADDBGlobalSecondaryIndexUpdate.h"

@interface UADDBUpdateTableRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBUpdateTableRequest

@synthesize xAmzTarget=_xAmzTarget, tableName=_tableName, provisionedThroughput=_provisionedThroughput, globalSecondaryIndexUpdates=_globalSecondaryIndexUpdates;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"DynamoDB_20120810.UpdateTable"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(globalSecondaryIndexUpdateAtIndex:) propertyName:@"globalSecondaryIndexUpdates"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addGlobalSecondaryIndexUpdate:) propertyName:@"globalSecondaryIndexUpdates"];
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

+ (NSValueTransformer *)provisionedThroughputJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UADDBProvisionedThroughput class]];
}

+ (NSValueTransformer *)globalSecondaryIndexUpdatesJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UADDBGlobalSecondaryIndexUpdate class]];
}

/*#pragma mark - Invocation

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
*/
@end

#pragma clang diagnostic pop