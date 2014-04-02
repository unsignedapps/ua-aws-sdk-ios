//
//  UACWSetAlarmStateRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWSetAlarmStateRequest.h"
#import "UACWSetAlarmStateResponse.h"

@interface UACWSetAlarmStateRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UACWSetAlarmStateRequest

@synthesize action=_action, version=_version, alarmName=_alarmName, stateValue=_stateValue, stateReason=_stateReason, stateReasonData=_stateReasonData;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"SetAlarmState"];
		[self setVersion:@"2010-08-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UACWSetAlarmStateResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UACWRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"alarmName": @"AlarmName",
        @"stateValue": @"StateValue",
        @"stateReason": @"StateReason",
        @"stateReasonData": @"StateReasonData"
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

- (void)setAlarmName:(NSString *)alarmName
{
	_alarmName = alarmName;
	
	if (![self.UA_dirtyProperties containsObject:@"alarmName"])
		[self.UA_dirtyProperties addObject:@"alarmName"];
}

- (void)setStateValue:(UACWAlarmState)stateValue
{
	_stateValue = stateValue;
	
	if (![self.UA_dirtyProperties containsObject:@"stateValue"])
		[self.UA_dirtyProperties addObject:@"stateValue"];
}

- (void)setStateReason:(NSString *)stateReason
{
	_stateReason = stateReason;
	
	if (![self.UA_dirtyProperties containsObject:@"stateReason"])
		[self.UA_dirtyProperties addObject:@"stateReason"];
}

- (void)setStateReasonData:(NSString *)stateReasonData
{
	_stateReasonData = stateReasonData;
	
	if (![self.UA_dirtyProperties containsObject:@"stateReasonData"])
		[self.UA_dirtyProperties addObject:@"stateReasonData"];
}

+ (NSValueTransformer *)stateValueJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UACWAlarmStateOK), @(UACWAlarmStateAlarm), @(UACWAlarmStateInsufficientData) ]
                                               stringValues:@[ @"OK", @"ALARM", @"INSUFFICIENT_DATA" ]
                                               unknownValue:@(UACWAlarmStateUnknown)];
}

+ (NSValueTransformer *)stateValueQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UACWAlarmStateOK), @(UACWAlarmStateAlarm), @(UACWAlarmStateInsufficientData) ]
                                               stringValues:@[ @"OK", @"ALARM", @"INSUFFICIENT_DATA" ]
                                               unknownValue:@(UACWAlarmStateUnknown)];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UACWSetAlarmStateRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UACWSetAlarmStateRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UACWSetAlarmStateRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UACWSetAlarmStateRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
