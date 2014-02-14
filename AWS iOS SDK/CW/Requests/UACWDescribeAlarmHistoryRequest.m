//
//  UACWDescribeAlarmHistoryRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UACWDescribeAlarmHistoryRequest.h"
#import "UACWDescribeAlarmHistoryResponse.h"

@interface UACWDescribeAlarmHistoryRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UACWDescribeAlarmHistoryRequest

@synthesize action=_action, version=_version, alarmName=_alarmName, historyItemType=_historyItemType, startDate=_startDate, endDate=_endDate, maxRecords=_maxRecords, nextToken=_nextToken;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeAlarmHistory"];
		[self setVersion:@"2010-08-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UACWDescribeAlarmHistoryResponse class];
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
        @"historyItemType": @"HistoryItemType",
        @"startDate": @"StartDate",
        @"endDate": @"EndDate",
        @"maxRecords": @"MaxRecords",
        @"nextToken": @"NextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)historyItemTypeJSONTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"ConfigurationUpdate"])
		    return @(UACWAlarmHistoryItemTypeConfigurationUpdate);
		if ([value isEqualToString:@"StateUpdate"])
		    return @(UACWAlarmHistoryItemTypeStateUpdate);
		if ([value isEqualToString:@"Action"])
		    return @(UACWAlarmHistoryItemTypeAction);

		return @(UACWAlarmHistoryItemTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UACWAlarmHistoryItemType castValue = (UACWAlarmHistoryItemType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UACWAlarmHistoryItemTypeConfigurationUpdate:
			    return @"ConfigurationUpdate";
			case UACWAlarmHistoryItemTypeStateUpdate:
			    return @"StateUpdate";
			case UACWAlarmHistoryItemTypeAction:
			    return @"Action";

			case UACWAlarmHistoryItemTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)startDateJSONTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)endDateJSONTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)historyItemTypeQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"ConfigurationUpdate"])
		    return @(UACWAlarmHistoryItemTypeConfigurationUpdate);
		if ([value isEqualToString:@"StateUpdate"])
		    return @(UACWAlarmHistoryItemTypeStateUpdate);
		if ([value isEqualToString:@"Action"])
		    return @(UACWAlarmHistoryItemTypeAction);

		return @(UACWAlarmHistoryItemTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UACWAlarmHistoryItemType castValue = (UACWAlarmHistoryItemType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UACWAlarmHistoryItemTypeConfigurationUpdate:
			    return @"ConfigurationUpdate";
			case UACWAlarmHistoryItemTypeStateUpdate:
			    return @"StateUpdate";
			case UACWAlarmHistoryItemTypeAction:
			    return @"Action";

			case UACWAlarmHistoryItemTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)startDateQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)endDateQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UACWDescribeAlarmHistoryRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UACWDescribeAlarmHistoryRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UACWDescribeAlarmHistoryRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UACWDescribeAlarmHistoryRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
