//
//  UAIAMCreateRoleRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMCreateRoleRequest.h"
#import "UAIAMCreateRoleResponse.h"

@interface UAIAMCreateRoleRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAIAMCreateRoleRequest

@synthesize action=_action, version=_version, path=_path, roleName=_roleName, assumeRolePolicyDocument=_assumeRolePolicyDocument;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateRole"];
		[self setVersion:@"2010-05-08"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMCreateRoleResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"path": @"Path",
        @"roleName": @"RoleName",
        @"assumeRolePolicyDocument": @"AssumeRolePolicyDocument"
    }];
    return [keyPaths copy];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMCreateRoleRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMCreateRoleRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMCreateRoleRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMCreateRoleRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
