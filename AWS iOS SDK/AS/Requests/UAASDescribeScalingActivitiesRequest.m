//
//  UAASDescribeScalingActivitiesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeScalingActivitiesRequest.h"
#import "UAASDescribeScalingActivitiesResponse.h"

@interface UAASDescribeScalingActivitiesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAASDescribeScalingActivitiesRequest

@synthesize action=_action, version=_version, activityIDs=_activityIDs, autoScalingGroupName=_autoScalingGroupName, maxRecords=_maxRecords, nextToken=_nextToken;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeScalingActivities"];
		[self setVersion:@"2011-01-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASDescribeScalingActivitiesResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"activityIDs": @"ActivityIds.member",
        @"autoScalingGroupName": @"AutoScalingGroupName",
        @"maxRecords": @"MaxRecords",
        @"nextToken": @"NextToken"
    }];
    return [keyPaths copy];
}

- (NSString *)activityIDAtIndex:(NSUInteger)index
{
    if (self.activityIDs == nil || index >= ([self.activityIDs count]-1))
        return nil;

    return [self.activityIDs objectAtIndex:index];
}

- (void)addActivityID:(NSString *)activityID
{
	if (self.activityIDs == nil)
		[self setActivityIDs:[NSMutableArray array]];
	[self.activityIDs addObject:activityID];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASDescribeScalingActivitiesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASDescribeScalingActivitiesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASDescribeScalingActivitiesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASDescribeScalingActivitiesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
