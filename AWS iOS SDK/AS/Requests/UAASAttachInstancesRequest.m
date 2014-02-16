//
//  UAASAttachInstancesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASAttachInstancesRequest.h"
#import "UAASAttachInstancesResponse.h"

@interface UAASAttachInstancesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAASAttachInstancesRequest

@synthesize action=_action, version=_version, instanceIDs=_instanceIDs, autoScalingGroupName=_autoScalingGroupName;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"AttachInstances"];
		[self setVersion:@"2011-01-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASAttachInstancesResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"instanceIDs": @"InstanceIds.member",
        @"autoScalingGroupName": @"AutoScalingGroupName"
    }];
    return [keyPaths copy];
}

- (void)addInstanceID:(NSString *)instanceID
{
	if (self.instanceIDs == nil)
		[self setInstanceIDs:[NSMutableArray array]];
	[self.instanceIDs addObject:instanceID];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASAttachInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASAttachInstancesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASAttachInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASAttachInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
