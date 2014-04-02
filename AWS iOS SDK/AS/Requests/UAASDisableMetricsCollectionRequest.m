//
//  UAASDisableMetricsCollectionRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDisableMetricsCollectionRequest.h"
#import "UAASDisableMetricsCollectionResponse.h"

@interface UAASDisableMetricsCollectionRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAASDisableMetricsCollectionRequest

@synthesize action=_action, version=_version, autoScalingGroupName=_autoScalingGroupName, metrics=_metrics;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DisableMetricsCollection"];
		[self setVersion:@"2011-01-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASDisableMetricsCollectionResponse class];
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
        @"metrics": @"Metrics.member"
    }];
    return [keyPaths copy];
}

- (NSString *)metricAtIndex:(NSUInteger)index
{
    if (self.metrics == nil || index >= ([self.metrics count]-1))
        return nil;

    return [self.metrics objectAtIndex:index];
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

- (void)setMetrics:(NSMutableArray *)metrics
{
	_metrics = metrics;
	
	if (![self.UA_dirtyProperties containsObject:@"metrics"])
		[self.UA_dirtyProperties addObject:@"metrics"];
}

- (void)addMetric:(NSString *)metric
{
	if (self.metrics == nil)
		[self setMetrics:[NSMutableArray array]];
	[self.metrics addObject:metric];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASDisableMetricsCollectionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASDisableMetricsCollectionRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASDisableMetricsCollectionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASDisableMetricsCollectionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
