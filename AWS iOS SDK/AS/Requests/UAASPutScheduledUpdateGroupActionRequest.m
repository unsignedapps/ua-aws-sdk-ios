//
//  UAASPutScheduledUpdateGroupActionRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASPutScheduledUpdateGroupActionRequest.h"
#import "UAASPutScheduledUpdateGroupActionResponse.h"

@interface UAASPutScheduledUpdateGroupActionRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAASPutScheduledUpdateGroupActionRequest

@synthesize action=_action, version=_version, autoScalingGroupName=_autoScalingGroupName, scheduledActionName=_scheduledActionName, time=_time, startTime=_startTime, endTime=_endTime, recurrence=_recurrence, minSize=_minSize, maxSize=_maxSize, desiredCapacity=_desiredCapacity;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"PutScheduledUpdateGroupAction"];
		[self setVersion:@"2011-01-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASPutScheduledUpdateGroupActionResponse class];
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
        @"scheduledActionName": @"ScheduledActionName",
        @"time": @"Time",
        @"startTime": @"StartTime",
        @"endTime": @"EndTime",
        @"recurrence": @"Recurrence",
        @"minSize": @"MinSize",
        @"maxSize": @"MaxSize",
        @"desiredCapacity": @"DesiredCapacity"
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

- (void)setScheduledActionName:(NSString *)scheduledActionName
{
	_scheduledActionName = scheduledActionName;
	
	if (![self.UA_dirtyProperties containsObject:@"scheduledActionName"])
		[self.UA_dirtyProperties addObject:@"scheduledActionName"];
}

- (void)setTime:(NSDate *)time
{
	_time = time;
	
	if (![self.UA_dirtyProperties containsObject:@"time"])
		[self.UA_dirtyProperties addObject:@"time"];
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

- (void)setRecurrence:(NSString *)recurrence
{
	_recurrence = recurrence;
	
	if (![self.UA_dirtyProperties containsObject:@"recurrence"])
		[self.UA_dirtyProperties addObject:@"recurrence"];
}

- (void)setMinSize:(NSNumber *)minSize
{
	_minSize = minSize;
	
	if (![self.UA_dirtyProperties containsObject:@"minSize"])
		[self.UA_dirtyProperties addObject:@"minSize"];
}

- (void)setMaxSize:(NSNumber *)maxSize
{
	_maxSize = maxSize;
	
	if (![self.UA_dirtyProperties containsObject:@"maxSize"])
		[self.UA_dirtyProperties addObject:@"maxSize"];
}

- (void)setDesiredCapacity:(NSNumber *)desiredCapacity
{
	_desiredCapacity = desiredCapacity;
	
	if (![self.UA_dirtyProperties containsObject:@"desiredCapacity"])
		[self.UA_dirtyProperties addObject:@"desiredCapacity"];
}

+ (NSValueTransformer *)timeJSONTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)startTimeJSONTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)endTimeJSONTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)timeQueryStringTransformer
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

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASPutScheduledUpdateGroupActionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASPutScheduledUpdateGroupActionRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASPutScheduledUpdateGroupActionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASPutScheduledUpdateGroupActionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
