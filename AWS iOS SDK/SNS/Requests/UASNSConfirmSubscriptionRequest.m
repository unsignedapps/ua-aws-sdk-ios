//
//  UASNSConfirmSubscriptionRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSConfirmSubscriptionRequest.h"
#import "UASNSConfirmSubscriptionResponse.h"

@interface UASNSConfirmSubscriptionRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UASNSConfirmSubscriptionRequest

@synthesize action=_action, version=_version, topicARN=_topicARN, token=_token, authenticateOnUnsubscribe=_authenticateOnUnsubscribe;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ConfirmSubscription"];
		[self setVersion:@"2010-03-31"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASNSConfirmSubscriptionResponse class];
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
        @"token": @"Token",
        @"authenticateOnUnsubscribe": @"AuthenticateOnUnsubscribe"
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

- (void)setToken:(NSString *)token
{
	_token = token;
	
	if (![self.UA_dirtyProperties containsObject:@"token"])
		[self.UA_dirtyProperties addObject:@"token"];
}

- (void)setAuthenticateOnUnsubscribe:(NSString *)authenticateOnUnsubscribe
{
	_authenticateOnUnsubscribe = authenticateOnUnsubscribe;
	
	if (![self.UA_dirtyProperties containsObject:@"authenticateOnUnsubscribe"])
		[self.UA_dirtyProperties addObject:@"authenticateOnUnsubscribe"];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASNSConfirmSubscriptionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASNSConfirmSubscriptionRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASNSConfirmSubscriptionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASNSConfirmSubscriptionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
