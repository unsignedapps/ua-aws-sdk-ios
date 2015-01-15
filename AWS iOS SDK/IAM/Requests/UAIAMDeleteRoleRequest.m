//
//  UAIAMDeleteRoleRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMDeleteRoleRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMDeleteRoleResponse.h"

@interface UAIAMDeleteRoleRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMDeleteRoleRequest

@synthesize action=_action, version=_version, roleName=_roleName;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeleteRole"];
		[self setVersion:@"2010-05-08"];
		
		
	}
	return self;
}

- (id)initWithRoleName:(NSString *)roleName
{
	if ((self = [self init]))
	{
		[self setRoleName:roleName];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMDeleteRoleResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"roleName": @"RoleName"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMDeleteRoleRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMDeleteRoleRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMDeleteRoleRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMDeleteRoleRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop