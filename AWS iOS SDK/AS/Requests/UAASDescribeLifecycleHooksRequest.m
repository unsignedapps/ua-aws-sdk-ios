//
//  UAASDescribeLifecycleHooksRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeLifecycleHooksRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASDescribeLifecycleHooksResponse.h"

@interface UAASDescribeLifecycleHooksRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDescribeLifecycleHooksRequest

@synthesize action=_action, version=_version, autoScalingGroupName=_autoScalingGroupName, lifecycleHookNames=_lifecycleHookNames;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeLifecycleHooks"];
		[self setVersion:@"2011-01-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(lifecycleHookNameAtIndex:) propertyName:@"lifecycleHookNames"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addLifecycleHookName:) propertyName:@"lifecycleHookNames"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASDescribeLifecycleHooksResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"autoScalingGroupName": @"AutoScalingGroupName",
        @"lifecycleHookNames": @"LifecycleHookNames.member"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASDescribeLifecycleHooksRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASDescribeLifecycleHooksRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASDescribeLifecycleHooksRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASDescribeLifecycleHooksRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop