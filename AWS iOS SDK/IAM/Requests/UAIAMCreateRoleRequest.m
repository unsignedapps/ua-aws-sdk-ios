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

- (void)setPath:(NSString *)path
{
	_path = path;
	
	if (![self.UA_dirtyProperties containsObject:@"path"])
		[self.UA_dirtyProperties addObject:@"path"];
}

- (void)setRoleName:(NSString *)roleName
{
	_roleName = roleName;
	
	if (![self.UA_dirtyProperties containsObject:@"roleName"])
		[self.UA_dirtyProperties addObject:@"roleName"];
}

- (void)setAssumeRolePolicyDocument:(NSString *)assumeRolePolicyDocument
{
	_assumeRolePolicyDocument = assumeRolePolicyDocument;
	
	if (![self.UA_dirtyProperties containsObject:@"assumeRolePolicyDocument"])
		[self.UA_dirtyProperties addObject:@"assumeRolePolicyDocument"];
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
