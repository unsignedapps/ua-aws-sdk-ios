//
//  UAASResumeProcessesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResumeProcessesRequest.h"
#import "UAASResumeProcessesResponse.h"

@interface UAASResumeProcessesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAASResumeProcessesRequest

@synthesize action=_action, version=_version, autoScalingGroupName=_autoScalingGroupName, scalingProcesses=_scalingProcesses;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ResumeProcesses"];
		[self setVersion:@"2011-01-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASResumeProcessesResponse class];
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
        @"scalingProcesses": @"ScalingProcesses.member"
    }];
    return [keyPaths copy];
}

- (void)addScalingProcess:(NSString *)scalingProcess
{
	if (self.scalingProcesses == nil)
		[self setScalingProcesses:[NSMutableArray array]];
	[self.scalingProcesses addObject:scalingProcess];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASResumeProcessesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASResumeProcessesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASResumeProcessesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASResumeProcessesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
