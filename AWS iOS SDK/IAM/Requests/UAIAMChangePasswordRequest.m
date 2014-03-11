//
//  UAIAMChangePasswordRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMChangePasswordRequest.h"
#import "UAIAMChangePasswordResponse.h"

@interface UAIAMChangePasswordRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAIAMChangePasswordRequest

@synthesize action=_action, version=_version, oldPassword=_oldPassword, changedPassword=_changedPassword;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ChangePassword"];
		[self setVersion:@"2010-05-08"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMChangePasswordResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"oldPassword": @"OldPassword",
        @"changedPassword": @"NewPassword"
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

- (void)setOldPassword:(NSString *)oldPassword
{
	_oldPassword = oldPassword;
	
	if (![self.UA_dirtyProperties containsObject:@"oldPassword"])
		[self.UA_dirtyProperties addObject:@"oldPassword"];
}

- (void)setChangedPassword:(NSString *)changedPassword
{
	_changedPassword = changedPassword;
	
	if (![self.UA_dirtyProperties containsObject:@"changedPassword"])
		[self.UA_dirtyProperties addObject:@"changedPassword"];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMChangePasswordRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMChangePasswordRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMChangePasswordRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMChangePasswordRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
