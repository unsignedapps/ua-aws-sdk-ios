//
//  UASQSListDeadLetterSourceQueuesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSListDeadLetterSourceQueuesRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASQSListDeadLetterSourceQueuesResponse.h"

@interface UASQSListDeadLetterSourceQueuesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASQSListDeadLetterSourceQueuesRequest

@synthesize action=_action, version=_version, queueURL=_queueURL;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ListDeadLetterSourceQueues"];
		[self setVersion:@"2012-11-05"];
		
		
	}
	return self;
}

- (id)initWithQueueURL:(NSString *)queueURL
{
	if ((self = [self init]))
	{
		[self setQueueURL:queueURL];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASQSListDeadLetterSourceQueuesResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"queueURL": @"QueueUrl"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASQSListDeadLetterSourceQueuesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASQSListDeadLetterSourceQueuesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASQSListDeadLetterSourceQueuesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASQSListDeadLetterSourceQueuesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop