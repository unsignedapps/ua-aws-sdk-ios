//
//  UACWSetAlarmStateRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
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

+ (NSValueTransformer *)stateValueJSONTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"OK"])
		    return @(UACWAlarmStateOK);
		if ([value isEqualToString:@"ALARM"])
		    return @(UACWAlarmStateALARM);
		if ([value isEqualToString:@"INSUFFICIENT_DATA"])
		    return @(UACWAlarmStateINSUFFICIENT_DATA);

		return @(UACWAlarmStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UACWAlarmState castValue = (UACWAlarmState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UACWAlarmStateOK:
			    return @"OK";
			case UACWAlarmStateALARM:
			    return @"ALARM";
			case UACWAlarmStateINSUFFICIENT_DATA:
			    return @"INSUFFICIENT_DATA";

			case UACWAlarmStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)stateValueQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"OK"])
		    return @(UACWAlarmStateOK);
		if ([value isEqualToString:@"ALARM"])
		    return @(UACWAlarmStateALARM);
		if ([value isEqualToString:@"INSUFFICIENT_DATA"])
		    return @(UACWAlarmStateINSUFFICIENT_DATA);

		return @(UACWAlarmStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UACWAlarmState castValue = (UACWAlarmState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UACWAlarmStateOK:
			    return @"OK";
			case UACWAlarmStateALARM:
			    return @"ALARM";
			case UACWAlarmStateINSUFFICIENT_DATA:
			    return @"INSUFFICIENT_DATA";

			case UACWAlarmStateUnknown:
			default:
				return nil;
        }
    }];
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
