//
//  UARDSDeleteDBParameterGroupRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDeleteDBParameterGroupRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDeleteDBParameterGroupResponse.h"

@interface UARDSDeleteDBParameterGroupRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDeleteDBParameterGroupRequest

@synthesize action=_action, version=_version, dBParameterGroupName=_dBParameterGroupName;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeleteDBParameterGroup"];
		[self setVersion:@"2014-10-31"];
		
		
	}
	return self;
}

- (id)initWithDBParameterGroupName:(NSString *)dBParameterGroupName
{
	if (self = [self init])
	{
		[self setDBParameterGroupName:dBParameterGroupName];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UARDSDeleteDBParameterGroupResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"dBParameterGroupName": @"DBParameterGroupName"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UARDSDeleteDBParameterGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UARDSDeleteDBParameterGroupRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UARDSDeleteDBParameterGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UARDSDeleteDBParameterGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop