//
//  UAIAMAddRoleToInstanceProfileRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMAddRoleToInstanceProfileRequest.h"
#import "UAIAMAddRoleToInstanceProfileResponse.h"

@interface UAIAMAddRoleToInstanceProfileRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAIAMAddRoleToInstanceProfileRequest

@synthesize action=_action, version=_version, instanceProfileName=_instanceProfileName, roleName=_roleName;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"AddRoleToInstanceProfile"];
		[self setVersion:@"2010-05-08"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMAddRoleToInstanceProfileResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"instanceProfileName": @"InstanceProfileName",
        @"roleName": @"RoleName"
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

- (void)setInstanceProfileName:(NSString *)instanceProfileName
{
	_instanceProfileName = instanceProfileName;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceProfileName"])
		[self.UA_dirtyProperties addObject:@"instanceProfileName"];
}

- (void)setRoleName:(NSString *)roleName
{
	_roleName = roleName;
	
	if (![self.UA_dirtyProperties containsObject:@"roleName"])
		[self.UA_dirtyProperties addObject:@"roleName"];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMAddRoleToInstanceProfileRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMAddRoleToInstanceProfileRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMAddRoleToInstanceProfileRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMAddRoleToInstanceProfileRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
