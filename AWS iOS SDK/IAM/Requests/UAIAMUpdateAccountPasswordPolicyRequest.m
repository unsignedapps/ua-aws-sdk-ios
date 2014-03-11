//
//  UAIAMUpdateAccountPasswordPolicyRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMUpdateAccountPasswordPolicyRequest.h"
#import "UAIAMUpdateAccountPasswordPolicyResponse.h"

@interface UAIAMUpdateAccountPasswordPolicyRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAIAMUpdateAccountPasswordPolicyRequest

@synthesize action=_action, version=_version, minimumPasswordLength=_minimumPasswordLength, requireSymbols=_requireSymbols, requireNumbers=_requireNumbers, requireUppercaseCharacters=_requireUppercaseCharacters, requireLowercaseCharacters=_requireLowercaseCharacters, allowUsersToChangePassword=_allowUsersToChangePassword;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"UpdateAccountPasswordPolicy"];
		[self setVersion:@"2010-05-08"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMUpdateAccountPasswordPolicyResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"minimumPasswordLength": @"MinimumPasswordLength",
        @"requireSymbols": @"RequireSymbols",
        @"requireNumbers": @"RequireNumbers",
        @"requireUppercaseCharacters": @"RequireUppercaseCharacters",
        @"requireLowercaseCharacters": @"RequireLowercaseCharacters",
        @"allowUsersToChangePassword": @"AllowUsersToChangePassword"
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

- (void)setMinimumPasswordLength:(NSNumber *)minimumPasswordLength
{
	_minimumPasswordLength = minimumPasswordLength;
	
	if (![self.UA_dirtyProperties containsObject:@"minimumPasswordLength"])
		[self.UA_dirtyProperties addObject:@"minimumPasswordLength"];
}

- (void)setRequireSymbols:(BOOL)requireSymbols
{
	_requireSymbols = requireSymbols;
	
	if (![self.UA_dirtyProperties containsObject:@"requireSymbols"])
		[self.UA_dirtyProperties addObject:@"requireSymbols"];
}

- (void)setRequireNumbers:(BOOL)requireNumbers
{
	_requireNumbers = requireNumbers;
	
	if (![self.UA_dirtyProperties containsObject:@"requireNumbers"])
		[self.UA_dirtyProperties addObject:@"requireNumbers"];
}

- (void)setRequireUppercaseCharacters:(BOOL)requireUppercaseCharacters
{
	_requireUppercaseCharacters = requireUppercaseCharacters;
	
	if (![self.UA_dirtyProperties containsObject:@"requireUppercaseCharacters"])
		[self.UA_dirtyProperties addObject:@"requireUppercaseCharacters"];
}

- (void)setRequireLowercaseCharacters:(BOOL)requireLowercaseCharacters
{
	_requireLowercaseCharacters = requireLowercaseCharacters;
	
	if (![self.UA_dirtyProperties containsObject:@"requireLowercaseCharacters"])
		[self.UA_dirtyProperties addObject:@"requireLowercaseCharacters"];
}

- (void)setAllowUsersToChangePassword:(BOOL)allowUsersToChangePassword
{
	_allowUsersToChangePassword = allowUsersToChangePassword;
	
	if (![self.UA_dirtyProperties containsObject:@"allowUsersToChangePassword"])
		[self.UA_dirtyProperties addObject:@"allowUsersToChangePassword"];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMUpdateAccountPasswordPolicyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMUpdateAccountPasswordPolicyRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMUpdateAccountPasswordPolicyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMUpdateAccountPasswordPolicyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
