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

- (NSString *)oKActionAtIndex:(NSUInteger)index
{
    if (self.oKActions == nil || index >= ([self.oKActions count]-1))
        return nil;

    return [self.oKActions objectAtIndex:index];
}

- (NSString *)alarmActionAtIndex:(NSUInteger)index
{
    if (self.alarmActions == nil || index >= ([self.alarmActions count]-1))
        return nil;

    return [self.alarmActions objectAtIndex:index];
}

- (NSString *)insufficientDataActionAtIndex:(NSUInteger)index
{
    if (self.insufficientDataActions == nil || index >= ([self.insufficientDataActions count]-1))
        return nil;

    return [self.insufficientDataActions objectAtIndex:index];
}

- (UACWDimension *)dimensionAtIndex:(NSUInteger)index
{
    if (self.dimensions == nil || index >= ([self.dimensions count]-1))
        return nil;

    return [self.dimensions objectAtIndex:index];
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

- (void)setAlarmDescription:(NSString *)alarmDescription
{
	_alarmDescription = alarmDescription;
	
	if (![self.UA_dirtyProperties containsObject:@"alarmDescription"])
		[self.UA_dirtyProperties addObject:@"alarmDescription"];
}

- (void)setActionsEnabled:(BOOL)actionsEnabled
{
	_actionsEnabled = actionsEnabled;
	
	if (![self.UA_dirtyProperties containsObject:@"actionsEnabled"])
		[self.UA_dirtyProperties addObject:@"actionsEnabled"];
}

- (void)setOKActions:(NSMutableArray *)oKActions
{
	_oKActions = oKActions;
	
	if (![self.UA_dirtyProperties containsObject:@"oKActions"])
		[self.UA_dirtyProperties addObject:@"oKActions"];
}

- (void)setAlarmActions:(NSMutableArray *)alarmActions
{
	_alarmActions = alarmActions;
	
	if (![self.UA_dirtyProperties containsObject:@"alarmActions"])
		[self.UA_dirtyProperties addObject:@"alarmActions"];
}

- (void)setInsufficientDataActions:(NSMutableArray *)insufficientDataActions
{
	_insufficientDataActions = insufficientDataActions;
	
	if (![self.UA_dirtyProperties containsObject:@"insufficientDataActions"])
		[self.UA_dirtyProperties addObject:@"insufficientDataActions"];
}

- (void)setMetricName:(NSString *)metricName
{
	_metricName = metricName;
	
	if (![self.UA_dirtyProperties containsObject:@"metricName"])
		[self.UA_dirtyProperties addObject:@"metricName"];
}

- (void)setNamespace:(NSString *)namespace
{
	_namespace = namespace;
	
	if (![self.UA_dirtyProperties containsObject:@"namespace"])
		[self.UA_dirtyProperties addObject:@"namespace"];
}

- (void)setStatistic:(UACWStatistic)statistic
{
	_statistic = statistic;
	
	if (![self.UA_dirtyProperties containsObject:@"statistic"])
		[self.UA_dirtyProperties addObject:@"statistic"];
}

- (void)setDimensions:(NSMutableArray *)dimensions
{
	_dimensions = dimensions;
	
	if (![self.UA_dirtyProperties containsObject:@"dimensions"])
		[self.UA_dirtyProperties addObject:@"dimensions"];
}

- (void)setPeriod:(NSNumber *)period
{
	_period = period;
	
	if (![self.UA_dirtyProperties containsObject:@"period"])
		[self.UA_dirtyProperties addObject:@"period"];
}

- (void)setUnit:(UACWUnit)unit
{
	_unit = unit;
	
	if (![self.UA_dirtyProperties containsObject:@"unit"])
		[self.UA_dirtyProperties addObject:@"unit"];
}

- (void)setEvaluationPeriods:(NSNumber *)evaluationPeriods
{
	_evaluationPeriods = evaluationPeriods;
	
	if (![self.UA_dirtyProperties containsObject:@"evaluationPeriods"])
		[self.UA_dirtyProperties addObject:@"evaluationPeriods"];
}

- (void)setThreshold:(NSNumber *)threshold
{
	_threshold = threshold;
	
	if (![self.UA_dirtyProperties containsObject:@"threshold"])
		[self.UA_dirtyProperties addObject:@"threshold"];
}

- (void)setComparisonOperator:(UACWMetricAlarmComparisonOperator)comparisonOperator
{
	_comparisonOperator = comparisonOperator;
	
	if (![self.UA_dirtyProperties containsObject:@"comparisonOperator"])
		[self.UA_dirtyProperties addObject:@"comparisonOperator"];
}

+ (NSValueTransformer *)statisticJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UACWStatisticSampleCount), @(UACWStatisticAverage), @(UACWStatisticSum), @(UACWStatisticMinimum), @(UACWStatisticMaximum) ]
                                               stringValues:@[ @"SampleCount", @"Average", @"Sum", @"Minimum", @"Maximum" ]
                                               unknownValue:@(UACWStatisticUnknown)];
}

+ (NSValueTransformer *)dimensionsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UACWDimension class]];
}

+ (NSValueTransformer *)unitJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UACWUnitNone), @(UACWUnitSeconds), @(UACWUnitMicroseconds), @(UACWUnitMilliseconds), @(UACWUnitBytes), @(UACWUnitKilobytes), @(UACWUnitMegabytes), @(UACWUnitGigabytes), @(UACWUnitTerabytes), @(UACWUnitBits), @(UACWUnitKilobits), @(UACWUnitMegabits), @(UACWUnitGigabits), @(UACWUnitTerabits), @(UACWUnitPercent), @(UACWUnitCount), @(UACWUnitBytesPerSecond), @(UACWUnitKilobytesPerSecond), @(UACWUnitMegabytesPerSecond), @(UACWUnitGigabytesPerSecond), @(UACWUnitTerabytesPerSecond), @(UACWUnitBitsPerSecond), @(UACWUnitKilobitsPerSecond), @(UACWUnitMegabitsPerSecond), @(UACWUnitGigabitsPerSecond), @(UACWUnitTerabitsPerSecond), @(UACWUnitCountPerSecond) ]
                                               stringValues:@[ @"None", @"Seconds", @"Microseconds", @"Milliseconds", @"Bytes", @"Kilobytes", @"Megabytes", @"Gigabytes", @"Terabytes", @"Bits", @"Kilobits", @"Megabits", @"Gigabits", @"Terabits", @"Percent", @"Count", @"Bytes/Second", @"Kilobytes/Second", @"Megabytes/Second", @"Gigabytes/Second", @"Terabytes/Second", @"Bits/Second", @"Kilobits/Second", @"Megabits/Second", @"Gigabits/Second", @"Terabits/Second", @"Count/Second" ]
                                               unknownValue:@(UACWUnitUnknown)];
}

+ (NSValueTransformer *)comparisonOperatorJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UACWMetricAlarmComparisonOperatorGreaterThanOrEqualToThreshold), @(UACWMetricAlarmComparisonOperatorGreaterThanThreshold), @(UACWMetricAlarmComparisonOperatorLessThanThreshold), @(UACWMetricAlarmComparisonOperatorLessThanOrEqualToThreshold) ]
                                               stringValues:@[ @"GreaterThanOrEqualToThreshold", @"GreaterThanThreshold", @"LessThanThreshold", @"LessThanOrEqualToThreshold" ]
                                               unknownValue:@(UACWMetricAlarmComparisonOperatorUnknown)];
}

+ (NSValueTransformer *)actionsEnabledQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)statisticQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UACWStatisticSampleCount), @(UACWStatisticAverage), @(UACWStatisticSum), @(UACWStatisticMinimum), @(UACWStatisticMaximum) ]
                                               stringValues:@[ @"SampleCount", @"Average", @"Sum", @"Minimum", @"Maximum" ]
                                               unknownValue:@(UACWStatisticUnknown)];
}

+ (NSValueTransformer *)dimensionsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UACWDimension class]];
}

+ (NSValueTransformer *)unitQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UACWUnitNone), @(UACWUnitSeconds), @(UACWUnitMicroseconds), @(UACWUnitMilliseconds), @(UACWUnitBytes), @(UACWUnitKilobytes), @(UACWUnitMegabytes), @(UACWUnitGigabytes), @(UACWUnitTerabytes), @(UACWUnitBits), @(UACWUnitKilobits), @(UACWUnitMegabits), @(UACWUnitGigabits), @(UACWUnitTerabits), @(UACWUnitPercent), @(UACWUnitCount), @(UACWUnitBytesPerSecond), @(UACWUnitKilobytesPerSecond), @(UACWUnitMegabytesPerSecond), @(UACWUnitGigabytesPerSecond), @(UACWUnitTerabytesPerSecond), @(UACWUnitBitsPerSecond), @(UACWUnitKilobitsPerSecond), @(UACWUnitMegabitsPerSecond), @(UACWUnitGigabitsPerSecond), @(UACWUnitTerabitsPerSecond), @(UACWUnitCountPerSecond) ]
                                               stringValues:@[ @"None", @"Seconds", @"Microseconds", @"Milliseconds", @"Bytes", @"Kilobytes", @"Megabytes", @"Gigabytes", @"Terabytes", @"Bits", @"Kilobits", @"Megabits", @"Gigabits", @"Terabits", @"Percent", @"Count", @"Bytes/Second", @"Kilobytes/Second", @"Megabytes/Second", @"Gigabytes/Second", @"Terabytes/Second", @"Bits/Second", @"Kilobits/Second", @"Megabits/Second", @"Gigabits/Second", @"Terabits/Second", @"Count/Second" ]
                                               unknownValue:@(UACWUnitUnknown)];
}

+ (NSValueTransformer *)comparisonOperatorQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UACWMetricAlarmComparisonOperatorGreaterThanOrEqualToThreshold), @(UACWMetricAlarmComparisonOperatorGreaterThanThreshold), @(UACWMetricAlarmComparisonOperatorLessThanThreshold), @(UACWMetricAlarmComparisonOperatorLessThanOrEqualToThreshold) ]
                                               stringValues:@[ @"GreaterThanOrEqualToThreshold", @"GreaterThanThreshold", @"LessThanThreshold", @"LessThanOrEqualToThreshold" ]
                                               unknownValue:@(UACWMetricAlarmComparisonOperatorUnknown)];
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
