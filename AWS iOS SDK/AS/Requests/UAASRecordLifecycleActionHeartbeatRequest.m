//
//  UAASRecordLifecycleActionHeartbeatRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASRecordLifecycleActionHeartbeatRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASRecordLifecycleActionHeartbeatResponse.h"

@interface UAASRecordLifecycleActionHeartbeatRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASRecordLifecycleActionHeartbeatRequest

@synthesize action=_action, version=_version, lifecycleHookName=_lifecycleHookName, autoScalingGroupName=_autoScalingGroupName, lifecycleActionToken=_lifecycleActionToken;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"RecordLifecycleActionHeartbeat"];
		[self setVersion:@"2011-01-01"];
		
		
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASRecordLifecycleActionHeartbeatResponse class];
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
        @"lifecycleActionToken": @"LifecycleActionToken"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASRecordLifecycleActionHeartbeatRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASRecordLifecycleActionHeartbeatRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASRecordLifecycleActionHeartbeatRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASRecordLifecycleActionHeartbeatRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop