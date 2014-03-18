//
//  UASQSListQueuesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSListQueuesRequest.h"
#import "UASQSListQueuesResponse.h"

@interface UASQSListQueuesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UASQSListQueuesRequest

@synthesize action=_action, version=_version, queueNamePrefix=_queueNamePrefix;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ListQueues"];
		[self setVersion:@"2012-11-05"];
	}
	return self;
}

- (id)initWithQueueNamePrefix:(NSString *)queueNamePrefix
{
	if (self = [self init])
	{
		[self setQueueNamePrefix:queueNamePrefix];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASQSListQueuesResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"queueNamePrefix": @"QueueNamePrefix"
    }];
    return [keyPaths copy];
}

- (void)setAction:(NSString *)action
{
	_action = action;
	
	if (![self.UA_dirtyProperties containsObject:@"action"])
		[self.UA_dirtyProperties addObject:@"action"];
}

- (void)setVersion:(NSString *)version
{
	_version = version;
	
	if (![self.UA_dirtyProperties containsObject:@"version"])
		[self.UA_dirtyProperties addObject:@"version"];
}

- (void)setQueueNamePrefix:(NSString *)queueNamePrefix
{
	_queueNamePrefix = queueNamePrefix;
	
	if (![self.UA_dirtyProperties containsObject:@"queueNamePrefix"])
		[self.UA_dirtyProperties addObject:@"queueNamePrefix"];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASQSListQueuesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASQSListQueuesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASQSListQueuesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASQSListQueuesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
