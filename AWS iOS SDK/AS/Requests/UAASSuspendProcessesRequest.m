//
//  UAASSuspendProcessesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASSuspendProcessesRequest.h"
#import "UAASSuspendProcessesResponse.h"

@interface UAASSuspendProcessesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAASSuspendProcessesRequest

@synthesize action=_action, version=_version, autoScalingGroupName=_autoScalingGroupName, scalingProcesses=_scalingProcesses;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"SuspendProcesses"];
		[self setVersion:@"2011-01-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASSuspendProcessesResponse class];
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

- (void)setAction:(NSString *)action
{
	_action = action;
	
	if (![self.UA_dirtyProperties containsObject:@"action"])
		[self.UA_dirtyProperties addObject:@"action"];
}

- (void)setVersion:(NSString *)version
{
	_version = version;
	
	if (![self.UA_dirtyProperties containsObject:@"version"])
		[self.UA_dirtyProperties addObject:@"version"];
}

- (void)setAutoScalingGroupName:(NSString *)autoScalingGroupName
{
	_autoScalingGroupName = autoScalingGroupName;
	
	if (![self.UA_dirtyProperties containsObject:@"autoScalingGroupName"])
		[self.UA_dirtyProperties addObject:@"autoScalingGroupName"];
}

- (void)setScalingProcesses:(NSMutableArray *)scalingProcesses
{
	_scalingProcesses = scalingProcesses;
	
	if (![self.UA_dirtyProperties containsObject:@"scalingProcesses"])
		[self.UA_dirtyProperties addObject:@"scalingProcesses"];
}

- (void)addScalingProcess:(NSString *)scalingProcess
{
	if (self.scalingProcesses == nil)
		[self setScalingProcesses:[NSMutableArray array]];
	[self.scalingProcesses addObject:scalingProcess];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASSuspendProcessesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASSuspendProcessesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASSuspendProcessesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASSuspendProcessesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
