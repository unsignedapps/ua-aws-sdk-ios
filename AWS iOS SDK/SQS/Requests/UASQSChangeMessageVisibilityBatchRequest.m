//
//  UASQSChangeMessageVisibilityBatchRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSChangeMessageVisibilityBatchRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASQSChangeMessageVisibilityBatchResponse.h"
#import "UASQSChangeMessageVisibilityBatchRequestEntry.h"

@interface UASQSChangeMessageVisibilityBatchRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASQSChangeMessageVisibilityBatchRequest

@synthesize action=_action, version=_version, queueURL=_queueURL, entries=_entries;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ChangeMessageVisibilityBatch"];
		[self setVersion:@"2012-11-05"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(entryAtIndex:) propertyName:@"entries"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addEntry:) propertyName:@"entries"];
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
        @"queueURL": @"QueueUrl",
        @"entries": @"ChangeMessageVisibilityBatchRequestEntry"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)entriesJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UASQSChangeMessageVisibilityBatchRequestEntry class]];
}

+ (NSValueTransformer *)entriesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UASQSChangeMessageVisibilityBatchRequestEntry class]];
}

/*#pragma mark - Invocation

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
*/
@end

#pragma clang diagnostic pop