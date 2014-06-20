//
//  UAIAMUpdateAccountPasswordPolicyRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMUpdateAccountPasswordPolicyRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMUpdateAccountPasswordPolicyResponse.h"

@interface UAIAMUpdateAccountPasswordPolicyRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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

/*#pragma mark - Invocation

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
*/
@end

#pragma clang diagnostic pop