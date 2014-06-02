//
//  UASQSChangeMessageVisibilityBatchRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSChangeMessageVisibilityBatchRequest.h"
#import "UASQSChangeMessageVisibilityBatchResponse.h"
#import "UASQSChangeMessageVisibilityBatchRequestEntry.h"

@interface UASQSChangeMessageVisibilityBatchRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UASQSChangeMessageVisibilityBatchRequest

@synthesize action=_action, version=_version, queueUrl=_queueUrl, entries=_entries;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ChangeMessageVisibilityBatch"];
		[self setVersion:@"2012-11-05"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASQSChangeMessageVisibilityBatchResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"queueUrl": @"QueueUrl",
        @"entries": @"ChangeMessageVisibilityBatchRequestEntry"
    }];
    return [keyPaths copy];
}

- (UASQSChangeMessageVisibilityBatchRequestEntry *)entryAtIndex:(NSUInteger)index
{
    if (self.entries == nil || index >= ([self.entries count]-1))
        return nil;

    return [self.entries objectAtIndex:index];
}

+ (NSValueTransformer *)entriesJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UASQSChangeMessageVisibilityBatchRequestEntry class]];
}

+ (NSValueTransformer *)entriesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UASQSChangeMessageVisibilityBatchRequestEntry class]];
}

- (void)addEntry:(UASQSChangeMessageVisibilityBatchRequestEntry *)entry
{
	if (self.entries == nil)
		[self setEntries:[NSMutableArray array]];
	[self.entries addObject:entry];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASQSChangeMessageVisibilityBatchRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASQSChangeMessageVisibilityBatchRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASQSChangeMessageVisibilityBatchRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASQSChangeMessageVisibilityBatchRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
