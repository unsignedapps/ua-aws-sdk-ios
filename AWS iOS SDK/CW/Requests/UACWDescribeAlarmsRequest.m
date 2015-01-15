//
//  UACWDescribeAlarmsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UACWDescribeAlarmsRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UACWDescribeAlarmsResponse.h"

@interface UACWDescribeAlarmsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UACWDescribeAlarmsRequest

@synthesize action=_action, version=_version, alarmNames=_alarmNames, alarmNamePrefix=_alarmNamePrefix, stateValue=_stateValue, actionPrefix=_actionPrefix, maxRecords=_maxRecords, nextToken=_nextToken;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeAlarms"];
		[self setVersion:@"2010-08-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(alarmNameAtIndex:) propertyName:@"alarmNames"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAlarmName:) propertyName:@"alarmNames"];
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

/*#pragma mark - Invocation

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
*/
@end

#pragma clang diagnostic pop