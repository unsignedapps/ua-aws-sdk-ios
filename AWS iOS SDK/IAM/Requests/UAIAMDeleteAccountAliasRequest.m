//
//  UAIAMDeleteAccountAliasRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMDeleteAccountAliasRequest.h"
#import "UAIAMDeleteAccountAliasResponse.h"

@interface UAIAMDeleteAccountAliasRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAIAMDeleteAccountAliasRequest

@synthesize action=_action, version=_version, accountAlias=_accountAlias;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeleteAccountAlias"];
		[self setVersion:@"2010-05-08"];
	}
	return self;
}

- (id)initWithAccountAlias:(NSString *)accountAlias
{
	if (self = [self init])
	{
		[self setAccountAlias:accountAlias];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMDeleteAccountAliasResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"accountAlias": @"AccountAlias"
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

- (void)setAccountAlias:(NSString *)accountAlias
{
	_accountAlias = accountAlias;
	
	if (![self.UA_dirtyProperties containsObject:@"accountAlias"])
		[self.UA_dirtyProperties addObject:@"accountAlias"];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMDeleteAccountAliasRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMDeleteAccountAliasRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMDeleteAccountAliasRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMDeleteAccountAliasRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
