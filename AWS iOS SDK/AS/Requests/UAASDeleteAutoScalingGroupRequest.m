//
//  UAASDeleteAutoScalingGroupRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDeleteAutoScalingGroupRequest.h"
#import "UAASDeleteAutoScalingGroupResponse.h"

@interface UAASDeleteAutoScalingGroupRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAASDeleteAutoScalingGroupRequest

@synthesize action=_action, version=_version, autoScalingGroupName=_autoScalingGroupName, forceDelete=_forceDelete;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeleteAutoScalingGroup"];
		[self setVersion:@"2011-01-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASDeleteAutoScalingGroupResponse class];
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
        @"forceDelete": @"ForceDelete"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)forceDeleteQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASDeleteAutoScalingGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASDeleteAutoScalingGroupRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASDeleteAutoScalingGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASDeleteAutoScalingGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
