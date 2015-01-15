//
//  UAASCompleteLifecycleActionRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASCompleteLifecycleActionRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASCompleteLifecycleActionResponse.h"

@interface UAASCompleteLifecycleActionRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASCompleteLifecycleActionRequest

@synthesize action=_action, version=_version, lifecycleHookName=_lifecycleHookName, autoScalingGroupName=_autoScalingGroupName, lifecycleActionToken=_lifecycleActionToken, lifecycleActionResult=_lifecycleActionResult;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CompleteLifecycleAction"];
		[self setVersion:@"2011-01-01"];
		
		
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASCompleteLifecycleActionResponse class];
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
        @"autoScalingGroupName": @"AutoScalingGroupName",
        @"lifecycleActionToken": @"LifecycleActionToken",
        @"lifecycleActionResult": @"LifecycleActionResult"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASCompleteLifecycleActionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASCompleteLifecycleActionRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASCompleteLifecycleActionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASCompleteLifecycleActionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop