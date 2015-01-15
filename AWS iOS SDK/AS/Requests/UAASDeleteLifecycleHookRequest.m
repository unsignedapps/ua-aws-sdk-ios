//
//  UAASDeleteLifecycleHookRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDeleteLifecycleHookRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASDeleteLifecycleHookResponse.h"

@interface UAASDeleteLifecycleHookRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDeleteLifecycleHookRequest

@synthesize action=_action, version=_version, lifecycleHookName=_lifecycleHookName, autoScalingGroupName=_autoScalingGroupName;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeleteLifecycleHook"];
		[self setVersion:@"2011-01-01"];
		
		
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASDeleteLifecycleHookResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"lifecycleHookName": @"LifecycleHookName",
        @"autoScalingGroupName": @"AutoScalingGroupName"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASDeleteLifecycleHookRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASDeleteLifecycleHookRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASDeleteLifecycleHookRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASDeleteLifecycleHookRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop