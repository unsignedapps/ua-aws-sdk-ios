//
//  UAASDescribeNotificationConfigurationsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeNotificationConfigurationsRequest.h"
#import "UAASDescribeNotificationConfigurationsResponse.h"

@interface UAASDescribeNotificationConfigurationsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAASDescribeNotificationConfigurationsRequest

@synthesize action=_action, version=_version, autoScalingGroupNames=_autoScalingGroupNames, nextToken=_nextToken, maxRecords=_maxRecords;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeNotificationConfigurations"];
		[self setVersion:@"2011-01-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASDescribeNotificationConfigurationsResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"autoScalingGroupNames": @"AutoScalingGroupNames.member",
        @"nextToken": @"NextToken",
        @"maxRecords": @"MaxRecords"
    }];
    return [keyPaths copy];
}

- (NSString *)autoScalingGroupNameAtIndex:(NSUInteger)index
{
    if (self.autoScalingGroupNames == nil || index >= ([self.autoScalingGroupNames count]-1))
        return nil;

    return [self.autoScalingGroupNames objectAtIndex:index];
}

- (void)addAutoScalingGroupName:(NSString *)autoScalingGroupName
{
	if (self.autoScalingGroupNames == nil)
		[self setAutoScalingGroupNames:[NSMutableArray array]];
	[self.autoScalingGroupNames addObject:autoScalingGroupName];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASDescribeNotificationConfigurationsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASDescribeNotificationConfigurationsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASDescribeNotificationConfigurationsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASDescribeNotificationConfigurationsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
