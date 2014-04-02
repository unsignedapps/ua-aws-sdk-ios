//
//  UACWDescribeAlarmsForMetricRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWDescribeAlarmsForMetricRequest.h"
#import "UACWDescribeAlarmsForMetricResponse.h"
#import "UACWDimension.h"

@interface UACWDescribeAlarmsForMetricRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UACWDescribeAlarmsForMetricRequest

@synthesize action=_action, version=_version, metricName=_metricName, namespace=_namespace, statistic=_statistic, dimensions=_dimensions, period=_period, unit=_unit;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeAlarmsForMetric"];
		[self setVersion:@"2010-08-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UACWDescribeAlarmsForMetricResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UACWRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"metricName": @"MetricName",
        @"namespace": @"Namespace",
        @"statistic": @"Statistic",
        @"dimensions": @"Dimensions.member",
        @"period": @"Period",
        @"unit": @"Unit"
    }];
    return [keyPaths copy];
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

- (void)addDimension:(UACWDimension *)dimension
{
	if (self.dimensions == nil)
		[self setDimensions:[NSMutableArray array]];
	[self.dimensions addObject:dimension];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UACWDescribeAlarmsForMetricRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UACWDescribeAlarmsForMetricRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UACWDescribeAlarmsForMetricRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UACWDescribeAlarmsForMetricRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
