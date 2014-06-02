//
//  UASQSDeleteMessageBatchRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSDeleteMessageBatchRequest.h"
#import "UASQSDeleteMessageBatchResponse.h"
#import "UASQSDeleteMessageBatchRequestEntry.h"

@interface UASQSDeleteMessageBatchRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UASQSDeleteMessageBatchRequest

@synthesize action=_action, version=_version, queueUrl=_queueUrl, entries=_entries;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeleteMessageBatch"];
		[self setVersion:@"2012-11-05"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASQSDeleteMessageBatchResponse class];
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
        @"entries": @"DeleteMessageBatchRequestEntry"
    }];
    return [keyPaths copy];
}

- (UASQSDeleteMessageBatchRequestEntry *)entryAtIndex:(NSUInteger)index
{
    if (self.entries == nil || index >= ([self.entries count]-1))
        return nil;

    return [self.entries objectAtIndex:index];
}

+ (NSValueTransformer *)entriesJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UASQSDeleteMessageBatchRequestEntry class]];
}

+ (NSValueTransformer *)entriesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UASQSDeleteMessageBatchRequestEntry class]];
}

- (void)addEntry:(UASQSDeleteMessageBatchRequestEntry *)entry
{
	if (self.entries == nil)
		[self setEntries:[NSMutableArray array]];
	[self.entries addObject:entry];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASQSDeleteMessageBatchRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASQSDeleteMessageBatchRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASQSDeleteMessageBatchRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASQSDeleteMessageBatchRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
