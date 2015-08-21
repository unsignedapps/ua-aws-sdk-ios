//
//  UARDSDeleteDBSecurityGroupRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDeleteDBSecurityGroupRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDeleteDBSecurityGroupResponse.h"

@interface UARDSDeleteDBSecurityGroupRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDeleteDBSecurityGroupRequest

@synthesize action=_action, version=_version, dBSecurityGroupName=_dBSecurityGroupName;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeleteDBSecurityGroup"];
		[self setVersion:@"2014-10-31"];
		
		
	}
	return self;
}

- (id)initWithDBSecurityGroupName:(NSString *)dBSecurityGroupName
{
	if (self = [self init])
	{
		[self setDBSecurityGroupName:dBSecurityGroupName];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UARDSDeleteDBSecurityGroupResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"dBSecurityGroupName": @"DBSecurityGroupName"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UARDSDeleteDBSecurityGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UARDSDeleteDBSecurityGroupRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UARDSDeleteDBSecurityGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UARDSDeleteDBSecurityGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop