//
//  UASNSSubscribeRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSSubscribeRequest.h"
#import "UASNSSubscribeResponse.h"

@interface UASNSSubscribeRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UASNSSubscribeRequest

@synthesize action=_action, version=_version, topicARN=_topicARN, protocol=_protocol, endpoint=_endpoint;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"Subscribe"];
		[self setVersion:@"2010-03-31"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASNSSubscribeResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"topicARN": @"TopicArn",
        @"protocol": @"Protocol",
        @"endpoint": @"Endpoint"
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

- (void)setTopicARN:(NSString *)topicARN
{
	_topicARN = topicARN;
	
	if (![self.UA_dirtyProperties containsObject:@"topicARN"])
		[self.UA_dirtyProperties addObject:@"topicARN"];
}

- (void)setProtocol:(NSString *)protocol
{
	_protocol = protocol;
	
	if (![self.UA_dirtyProperties containsObject:@"protocol"])
		[self.UA_dirtyProperties addObject:@"protocol"];
}

- (void)setEndpoint:(NSString *)endpoint
{
	_endpoint = endpoint;
	
	if (![self.UA_dirtyProperties containsObject:@"endpoint"])
		[self.UA_dirtyProperties addObject:@"endpoint"];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASNSSubscribeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASNSSubscribeRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASNSSubscribeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASNSSubscribeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
