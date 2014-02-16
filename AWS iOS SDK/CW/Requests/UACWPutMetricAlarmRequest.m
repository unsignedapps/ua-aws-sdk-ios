//
//  UACWPutMetricAlarmRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWPutMetricAlarmRequest.h"
#import "UACWPutMetricAlarmResponse.h"
#import "UACWDimension.h"

@interface UACWPutMetricAlarmRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UACWPutMetricAlarmRequest

@synthesize action=_action, version=_version, alarmName=_alarmName, alarmDescription=_alarmDescription, actionsEnabled=_actionsEnabled, oKActions=_oKActions, alarmActions=_alarmActions, insufficientDataActions=_insufficientDataActions, metricName=_metricName, namespace=_namespace, statistic=_statistic, dimensions=_dimensions, period=_period, unit=_unit, evaluationPeriods=_evaluationPeriods, threshold=_threshold, comparisonOperator=_comparisonOperator;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"PutMetricAlarm"];
		[self setVersion:@"2010-08-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UACWPutMetricAlarmResponse class];
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
        @"alarmDescription": @"AlarmDescription",
        @"actionsEnabled": @"ActionsEnabled",
        @"oKActions": @"OKActions.member",
        @"alarmActions": @"AlarmActions.member",
        @"insufficientDataActions": @"InsufficientDataActions.member",
        @"metricName": @"MetricName",
        @"namespace": @"Namespace",
        @"statistic": @"Statistic",
        @"dimensions": @"Dimensions.member",
        @"period": @"Period",
        @"unit": @"Unit",
        @"evaluationPeriods": @"EvaluationPeriods",
        @"threshold": @"Threshold",
        @"comparisonOperator": @"ComparisonOperator"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)statisticJSONTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"SampleCount"])
		    return @(UACWStatisticSampleCount);
		if ([value isEqualToString:@"Average"])
		    return @(UACWStatisticAverage);
		if ([value isEqualToString:@"Sum"])
		    return @(UACWStatisticSum);
		if ([value isEqualToString:@"Minimum"])
		    return @(UACWStatisticMinimum);
		if ([value isEqualToString:@"Maximum"])
		    return @(UACWStatisticMaximum);

		return @(UACWStatisticUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UACWStatistic castValue = (UACWStatistic)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UACWStatisticSampleCount:
			    return @"SampleCount";
			case UACWStatisticAverage:
			    return @"Average";
			case UACWStatisticSum:
			    return @"Sum";
			case UACWStatisticMinimum:
			    return @"Minimum";
			case UACWStatisticMaximum:
			    return @"Maximum";

			case UACWStatisticUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)dimensionsJSONTransformer
{
  return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[UACWDimension class]];
}

+ (NSValueTransformer *)unitJSONTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"None"])
		    return @(UACWUnitNone);
		if ([value isEqualToString:@"Seconds"])
		    return @(UACWUnitSeconds);
		if ([value isEqualToString:@"Microseconds"])
		    return @(UACWUnitMicroseconds);
		if ([value isEqualToString:@"Milliseconds"])
		    return @(UACWUnitMilliseconds);
		if ([value isEqualToString:@"Bytes"])
		    return @(UACWUnitBytes);
		if ([value isEqualToString:@"Kilobytes"])
		    return @(UACWUnitKilobytes);
		if ([value isEqualToString:@"Megabytes"])
		    return @(UACWUnitMegabytes);
		if ([value isEqualToString:@"Gigabytes"])
		    return @(UACWUnitGigabytes);
		if ([value isEqualToString:@"Terabytes"])
		    return @(UACWUnitTerabytes);
		if ([value isEqualToString:@"Bits"])
		    return @(UACWUnitBits);
		if ([value isEqualToString:@"Kilobits"])
		    return @(UACWUnitKilobits);
		if ([value isEqualToString:@"Megabits"])
		    return @(UACWUnitMegabits);
		if ([value isEqualToString:@"Gigabits"])
		    return @(UACWUnitGigabits);
		if ([value isEqualToString:@"Terabits"])
		    return @(UACWUnitTerabits);
		if ([value isEqualToString:@"Percent"])
		    return @(UACWUnitPercent);
		if ([value isEqualToString:@"Count"])
		    return @(UACWUnitCount);
		if ([value isEqualToString:@"Bytes/Second"])
		    return @(UACWUnitBytesPerSecond);
		if ([value isEqualToString:@"Kilobytes/Second"])
		    return @(UACWUnitKilobytesPerSecond);
		if ([value isEqualToString:@"Megabytes/Second"])
		    return @(UACWUnitMegabytesPerSecond);
		if ([value isEqualToString:@"Gigabytes/Second"])
		    return @(UACWUnitGigabytesPerSecond);
		if ([value isEqualToString:@"Terabytes/Second"])
		    return @(UACWUnitTerabytesPerSecond);
		if ([value isEqualToString:@"Bits/Second"])
		    return @(UACWUnitBitsPerSecond);
		if ([value isEqualToString:@"Kilobits/Second"])
		    return @(UACWUnitKilobitsPerSecond);
		if ([value isEqualToString:@"Megabits/Second"])
		    return @(UACWUnitMegabitsPerSecond);
		if ([value isEqualToString:@"Gigabits/Second"])
		    return @(UACWUnitGigabitsPerSecond);
		if ([value isEqualToString:@"Terabits/Second"])
		    return @(UACWUnitTerabitsPerSecond);
		if ([value isEqualToString:@"Count/Second"])
		    return @(UACWUnitCountPerSecond);

		return @(UACWUnitUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UACWUnit castValue = (UACWUnit)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UACWUnitNone:
			    return @"None";
			case UACWUnitSeconds:
			    return @"Seconds";
			case UACWUnitMicroseconds:
			    return @"Microseconds";
			case UACWUnitMilliseconds:
			    return @"Milliseconds";
			case UACWUnitBytes:
			    return @"Bytes";
			case UACWUnitKilobytes:
			    return @"Kilobytes";
			case UACWUnitMegabytes:
			    return @"Megabytes";
			case UACWUnitGigabytes:
			    return @"Gigabytes";
			case UACWUnitTerabytes:
			    return @"Terabytes";
			case UACWUnitBits:
			    return @"Bits";
			case UACWUnitKilobits:
			    return @"Kilobits";
			case UACWUnitMegabits:
			    return @"Megabits";
			case UACWUnitGigabits:
			    return @"Gigabits";
			case UACWUnitTerabits:
			    return @"Terabits";
			case UACWUnitPercent:
			    return @"Percent";
			case UACWUnitCount:
			    return @"Count";
			case UACWUnitBytesPerSecond:
			    return @"Bytes/Second";
			case UACWUnitKilobytesPerSecond:
			    return @"Kilobytes/Second";
			case UACWUnitMegabytesPerSecond:
			    return @"Megabytes/Second";
			case UACWUnitGigabytesPerSecond:
			    return @"Gigabytes/Second";
			case UACWUnitTerabytesPerSecond:
			    return @"Terabytes/Second";
			case UACWUnitBitsPerSecond:
			    return @"Bits/Second";
			case UACWUnitKilobitsPerSecond:
			    return @"Kilobits/Second";
			case UACWUnitMegabitsPerSecond:
			    return @"Megabits/Second";
			case UACWUnitGigabitsPerSecond:
			    return @"Gigabits/Second";
			case UACWUnitTerabitsPerSecond:
			    return @"Terabits/Second";
			case UACWUnitCountPerSecond:
			    return @"Count/Second";

			case UACWUnitUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)comparisonOperatorJSONTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"GreaterThanOrEqualToThreshold"])
		    return @(UACWMetricAlarmComparisonOperatorGreaterThanOrEqualToThreshold);
		if ([value isEqualToString:@"GreaterThanThreshold"])
		    return @(UACWMetricAlarmComparisonOperatorGreaterThanThreshold);
		if ([value isEqualToString:@"LessThanThreshold"])
		    return @(UACWMetricAlarmComparisonOperatorLessThanThreshold);
		if ([value isEqualToString:@"LessThanOrEqualToThreshold"])
		    return @(UACWMetricAlarmComparisonOperatorLessThanOrEqualToThreshold);

		return @(UACWMetricAlarmComparisonOperatorUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UACWMetricAlarmComparisonOperator castValue = (UACWMetricAlarmComparisonOperator)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UACWMetricAlarmComparisonOperatorGreaterThanOrEqualToThreshold:
			    return @"GreaterThanOrEqualToThreshold";
			case UACWMetricAlarmComparisonOperatorGreaterThanThreshold:
			    return @"GreaterThanThreshold";
			case UACWMetricAlarmComparisonOperatorLessThanThreshold:
			    return @"LessThanThreshold";
			case UACWMetricAlarmComparisonOperatorLessThanOrEqualToThreshold:
			    return @"LessThanOrEqualToThreshold";

			case UACWMetricAlarmComparisonOperatorUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)actionsEnabledQueryStringTransformer
{
    return [MTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)statisticQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"SampleCount"])
		    return @(UACWStatisticSampleCount);
		if ([value isEqualToString:@"Average"])
		    return @(UACWStatisticAverage);
		if ([value isEqualToString:@"Sum"])
		    return @(UACWStatisticSum);
		if ([value isEqualToString:@"Minimum"])
		    return @(UACWStatisticMinimum);
		if ([value isEqualToString:@"Maximum"])
		    return @(UACWStatisticMaximum);

		return @(UACWStatisticUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UACWStatistic castValue = (UACWStatistic)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UACWStatisticSampleCount:
			    return @"SampleCount";
			case UACWStatisticAverage:
			    return @"Average";
			case UACWStatisticSum:
			    return @"Sum";
			case UACWStatisticMinimum:
			    return @"Minimum";
			case UACWStatisticMaximum:
			    return @"Maximum";

			case UACWStatisticUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)dimensionsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UACWDimension class]];
}

+ (NSValueTransformer *)unitQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"None"])
		    return @(UACWUnitNone);
		if ([value isEqualToString:@"Seconds"])
		    return @(UACWUnitSeconds);
		if ([value isEqualToString:@"Microseconds"])
		    return @(UACWUnitMicroseconds);
		if ([value isEqualToString:@"Milliseconds"])
		    return @(UACWUnitMilliseconds);
		if ([value isEqualToString:@"Bytes"])
		    return @(UACWUnitBytes);
		if ([value isEqualToString:@"Kilobytes"])
		    return @(UACWUnitKilobytes);
		if ([value isEqualToString:@"Megabytes"])
		    return @(UACWUnitMegabytes);
		if ([value isEqualToString:@"Gigabytes"])
		    return @(UACWUnitGigabytes);
		if ([value isEqualToString:@"Terabytes"])
		    return @(UACWUnitTerabytes);
		if ([value isEqualToString:@"Bits"])
		    return @(UACWUnitBits);
		if ([value isEqualToString:@"Kilobits"])
		    return @(UACWUnitKilobits);
		if ([value isEqualToString:@"Megabits"])
		    return @(UACWUnitMegabits);
		if ([value isEqualToString:@"Gigabits"])
		    return @(UACWUnitGigabits);
		if ([value isEqualToString:@"Terabits"])
		    return @(UACWUnitTerabits);
		if ([value isEqualToString:@"Percent"])
		    return @(UACWUnitPercent);
		if ([value isEqualToString:@"Count"])
		    return @(UACWUnitCount);
		if ([value isEqualToString:@"Bytes/Second"])
		    return @(UACWUnitBytesPerSecond);
		if ([value isEqualToString:@"Kilobytes/Second"])
		    return @(UACWUnitKilobytesPerSecond);
		if ([value isEqualToString:@"Megabytes/Second"])
		    return @(UACWUnitMegabytesPerSecond);
		if ([value isEqualToString:@"Gigabytes/Second"])
		    return @(UACWUnitGigabytesPerSecond);
		if ([value isEqualToString:@"Terabytes/Second"])
		    return @(UACWUnitTerabytesPerSecond);
		if ([value isEqualToString:@"Bits/Second"])
		    return @(UACWUnitBitsPerSecond);
		if ([value isEqualToString:@"Kilobits/Second"])
		    return @(UACWUnitKilobitsPerSecond);
		if ([value isEqualToString:@"Megabits/Second"])
		    return @(UACWUnitMegabitsPerSecond);
		if ([value isEqualToString:@"Gigabits/Second"])
		    return @(UACWUnitGigabitsPerSecond);
		if ([value isEqualToString:@"Terabits/Second"])
		    return @(UACWUnitTerabitsPerSecond);
		if ([value isEqualToString:@"Count/Second"])
		    return @(UACWUnitCountPerSecond);

		return @(UACWUnitUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UACWUnit castValue = (UACWUnit)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UACWUnitNone:
			    return @"None";
			case UACWUnitSeconds:
			    return @"Seconds";
			case UACWUnitMicroseconds:
			    return @"Microseconds";
			case UACWUnitMilliseconds:
			    return @"Milliseconds";
			case UACWUnitBytes:
			    return @"Bytes";
			case UACWUnitKilobytes:
			    return @"Kilobytes";
			case UACWUnitMegabytes:
			    return @"Megabytes";
			case UACWUnitGigabytes:
			    return @"Gigabytes";
			case UACWUnitTerabytes:
			    return @"Terabytes";
			case UACWUnitBits:
			    return @"Bits";
			case UACWUnitKilobits:
			    return @"Kilobits";
			case UACWUnitMegabits:
			    return @"Megabits";
			case UACWUnitGigabits:
			    return @"Gigabits";
			case UACWUnitTerabits:
			    return @"Terabits";
			case UACWUnitPercent:
			    return @"Percent";
			case UACWUnitCount:
			    return @"Count";
			case UACWUnitBytesPerSecond:
			    return @"Bytes/Second";
			case UACWUnitKilobytesPerSecond:
			    return @"Kilobytes/Second";
			case UACWUnitMegabytesPerSecond:
			    return @"Megabytes/Second";
			case UACWUnitGigabytesPerSecond:
			    return @"Gigabytes/Second";
			case UACWUnitTerabytesPerSecond:
			    return @"Terabytes/Second";
			case UACWUnitBitsPerSecond:
			    return @"Bits/Second";
			case UACWUnitKilobitsPerSecond:
			    return @"Kilobits/Second";
			case UACWUnitMegabitsPerSecond:
			    return @"Megabits/Second";
			case UACWUnitGigabitsPerSecond:
			    return @"Gigabits/Second";
			case UACWUnitTerabitsPerSecond:
			    return @"Terabits/Second";
			case UACWUnitCountPerSecond:
			    return @"Count/Second";

			case UACWUnitUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)comparisonOperatorQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"GreaterThanOrEqualToThreshold"])
		    return @(UACWMetricAlarmComparisonOperatorGreaterThanOrEqualToThreshold);
		if ([value isEqualToString:@"GreaterThanThreshold"])
		    return @(UACWMetricAlarmComparisonOperatorGreaterThanThreshold);
		if ([value isEqualToString:@"LessThanThreshold"])
		    return @(UACWMetricAlarmComparisonOperatorLessThanThreshold);
		if ([value isEqualToString:@"LessThanOrEqualToThreshold"])
		    return @(UACWMetricAlarmComparisonOperatorLessThanOrEqualToThreshold);

		return @(UACWMetricAlarmComparisonOperatorUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UACWMetricAlarmComparisonOperator castValue = (UACWMetricAlarmComparisonOperator)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UACWMetricAlarmComparisonOperatorGreaterThanOrEqualToThreshold:
			    return @"GreaterThanOrEqualToThreshold";
			case UACWMetricAlarmComparisonOperatorGreaterThanThreshold:
			    return @"GreaterThanThreshold";
			case UACWMetricAlarmComparisonOperatorLessThanThreshold:
			    return @"LessThanThreshold";
			case UACWMetricAlarmComparisonOperatorLessThanOrEqualToThreshold:
			    return @"LessThanOrEqualToThreshold";

			case UACWMetricAlarmComparisonOperatorUnknown:
			default:
				return nil;
        }
    }];
}

- (void)addOKAction:(NSString *)oKAction
{
	if (self.oKActions == nil)
		[self setOKActions:[NSMutableArray array]];
	[self.oKActions addObject:oKAction];
}
- (void)addAlarmAction:(NSString *)alarmAction
{
	if (self.alarmActions == nil)
		[self setAlarmActions:[NSMutableArray array]];
	[self.alarmActions addObject:alarmAction];
}
- (void)addInsufficientDataAction:(NSString *)insufficientDataAction
{
	if (self.insufficientDataActions == nil)
		[self setInsufficientDataActions:[NSMutableArray array]];
	[self.insufficientDataActions addObject:insufficientDataAction];
}
- (void)addDimension:(UACWDimension *)dimension
{
	if (self.dimensions == nil)
		[self setDimensions:[NSMutableArray array]];
	[self.dimensions addObject:dimension];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UACWPutMetricAlarmRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UACWPutMetricAlarmRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UACWPutMetricAlarmRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UACWPutMetricAlarmRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
