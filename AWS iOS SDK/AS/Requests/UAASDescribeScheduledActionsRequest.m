//
//  UAASDescribeScheduledActionsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeScheduledActionsRequest.h"
#import "UAASDescribeScheduledActionsResponse.h"

@interface UAASDescribeScheduledActionsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAASDescribeScheduledActionsRequest

@synthesize action=_action, version=_version, autoScalingGroupName=_autoScalingGroupName, scheduledActionNames=_scheduledActionNames, startTime=_startTime, endTime=_endTime, nextToken=_nextToken, maxRecords=_maxRecords;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeScheduledActions"];
		[self setVersion:@"2011-01-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASDescribeScheduledActionsResponse class];
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
        @"scheduledActionNames": @"ScheduledActionNames.member",
        @"startTime": @"StartTime",
        @"endTime": @"EndTime",
        @"nextToken": @"NextToken",
        @"maxRecords": @"MaxRecords"
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

- (void)setScheduledActionNames:(NSMutableArray *)scheduledActionNames
{
	_scheduledActionNames = scheduledActionNames;
	
	if (![self.UA_dirtyProperties containsObject:@"scheduledActionNames"])
		[self.UA_dirtyProperties addObject:@"scheduledActionNames"];
}

- (void)setStartTime:(NSDate *)startTime
{
	_startTime = startTime;
	
	if (![self.UA_dirtyProperties containsObject:@"startTime"])
		[self.UA_dirtyProperties addObject:@"startTime"];
}

- (void)setEndTime:(NSDate *)endTime
{
	_endTime = endTime;
	
	if (![self.UA_dirtyProperties containsObject:@"endTime"])
		[self.UA_dirtyProperties addObject:@"endTime"];
}

- (void)setNextToken:(NSString *)nextToken
{
	_nextToken = nextToken;
	
	if (![self.UA_dirtyProperties containsObject:@"nextToken"])
		[self.UA_dirtyProperties addObject:@"nextToken"];
}

- (void)setMaxRecords:(NSNumber *)maxRecords
{
	_maxRecords = maxRecords;
	
	if (![self.UA_dirtyProperties containsObject:@"maxRecords"])
		[self.UA_dirtyProperties addObject:@"maxRecords"];
}

+ (NSValueTransformer *)startTimeJSONTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)endTimeJSONTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)startTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)endTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

- (void)addScheduledActionName:(NSString *)scheduledActionName
{
	if (self.scheduledActionNames == nil)
		[self setScheduledActionNames:[NSMutableArray array]];
	[self.scheduledActionNames addObject:scheduledActionName];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASDescribeScheduledActionsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASDescribeScheduledActionsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASDescribeScheduledActionsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASDescribeScheduledActionsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
