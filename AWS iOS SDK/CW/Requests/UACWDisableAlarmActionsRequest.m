//
//  UACWDisableAlarmActionsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWDisableAlarmActionsRequest.h"
#import "UACWDisableAlarmActionsResponse.h"

@interface UACWDisableAlarmActionsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UACWDisableAlarmActionsRequest

@synthesize action=_action, version=_version, alarmNames=_alarmNames;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DisableAlarmActions"];
		[self setVersion:@"2010-08-01"];
	}
	return self;
}

- (id)initWithAlarmNames:(NSArray *)alarmNames
{
	if (self = [self init])
	{
		[self setAlarmNames:[alarmNames mutableCopy]];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UACWDisableAlarmActionsResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UACWRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"alarmNames": @"AlarmNames.member"
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

- (void)setAlarmNames:(NSMutableArray *)alarmNames
{
	_alarmNames = alarmNames;
	
	if (![self.UA_dirtyProperties containsObject:@"alarmNames"])
		[self.UA_dirtyProperties addObject:@"alarmNames"];
}

- (void)addAlarmName:(NSString *)alarmName
{
	if (self.alarmNames == nil)
		[self setAlarmNames:[NSMutableArray array]];
	[self.alarmNames addObject:alarmName];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UACWDisableAlarmActionsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UACWDisableAlarmActionsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UACWDisableAlarmActionsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UACWDisableAlarmActionsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
