//
//  UACWDescribeAlarmsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UACWDescribeAlarmsRequest.h"
#import "UACWDescribeAlarmsResponse.h"

@interface UACWDescribeAlarmsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UACWDescribeAlarmsRequest

@synthesize action=_action, version=_version, alarmNames=_alarmNames, alarmNamePrefix=_alarmNamePrefix, stateValue=_stateValue, actionPrefix=_actionPrefix, maxRecords=_maxRecords, nextToken=_nextToken;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeAlarms"];
		[self setVersion:@"2010-08-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UACWDescribeAlarmsResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UACWRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"alarmNames": @"AlarmNames.member",
        @"alarmNamePrefix": @"AlarmNamePrefix",
        @"stateValue": @"StateValue",
        @"actionPrefix": @"ActionPrefix",
        @"maxRecords": @"MaxRecords",
        @"nextToken": @"NextToken"
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

- (void)addAlarmName:(NSString *)alarmName
{
	if (self.alarmNames == nil)
		[self setAlarmNames:[NSMutableArray array]];
	[self.alarmNames addObject:alarmName];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UACWDescribeAlarmsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UACWDescribeAlarmsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UACWDescribeAlarmsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UACWDescribeAlarmsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
