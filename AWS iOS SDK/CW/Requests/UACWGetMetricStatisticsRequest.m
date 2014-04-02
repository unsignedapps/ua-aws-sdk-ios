//
//  UACWGetMetricStatisticsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWGetMetricStatisticsRequest.h"
#import "UACWGetMetricStatisticsResponse.h"
#import "UACWDimension.h"

@interface UACWGetMetricStatisticsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UACWGetMetricStatisticsRequest

@synthesize action=_action, version=_version, namespace=_namespace, metricName=_metricName, dimensions=_dimensions, startTime=_startTime, endTime=_endTime, period=_period, statistics=_statistics, unit=_unit;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"GetMetricStatistics"];
		[self setVersion:@"2010-08-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UACWGetMetricStatisticsResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UACWRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"namespace": @"Namespace",
        @"metricName": @"MetricName",
        @"dimensions": @"Dimensions.member",
        @"startTime": @"StartTime",
        @"endTime": @"EndTime",
        @"period": @"Period",
        @"statistics": @"Statistics.member",
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

- (UACWStatistic)statisticAtIndex:(NSUInteger)index
{
    if (self.statistics == nil || index >= ([self.statistics count]-1))
        return UACWStatisticUnknown;

    return (UACWStatistic)[[self.statistics objectAtIndex:index] unsignedIntegerValue];
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

- (void)setNamespace:(NSString *)namespace
{
	_namespace = namespace;
	
	if (![self.UA_dirtyProperties containsObject:@"namespace"])
		[self.UA_dirtyProperties addObject:@"namespace"];
}

- (void)setMetricName:(NSString *)metricName
{
	_metricName = metricName;
	
	if (![self.UA_dirtyProperties containsObject:@"metricName"])
		[self.UA_dirtyProperties addObject:@"metricName"];
}

- (void)setDimensions:(NSMutableArray *)dimensions
{
	_dimensions = dimensions;
	
	if (![self.UA_dirtyProperties containsObject:@"dimensions"])
		[self.UA_dirtyProperties addObject:@"dimensions"];
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

- (void)setPeriod:(NSNumber *)period
{
	_period = period;
	
	if (![self.UA_dirtyProperties containsObject:@"period"])
		[self.UA_dirtyProperties addObject:@"period"];
}

- (void)setStatistics:(NSMutableArray *)statistics
{
	_statistics = statistics;
	
	if (![self.UA_dirtyProperties containsObject:@"statistics"])
		[self.UA_dirtyProperties addObject:@"statistics"];
}

- (void)setUnit:(UACWUnit)unit
{
	_unit = unit;
	
	if (![self.UA_dirtyProperties containsObject:@"unit"])
		[self.UA_dirtyProperties addObject:@"unit"];
}

+ (NSValueTransformer *)dimensionsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UACWDimension class]];
}

+ (NSValueTransformer *)startTimeJSONTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)endTimeJSONTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)statisticsQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMArrayTransformerWithValues:@[ @(UACWStatisticSampleCount), @(UACWStatisticAverage), @(UACWStatisticSum), @(UACWStatisticMinimum), @(UACWStatisticMaximum) ]
                                                    stringValues:@[ @"SampleCount", @"Average", @"Sum", @"Minimum", @"Maximum" ]
                                                    unknownValue:@(UACWStatisticUnknown)];
}

+ (NSValueTransformer *)unitJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UACWUnitNone), @(UACWUnitSeconds), @(UACWUnitMicroseconds), @(UACWUnitMilliseconds), @(UACWUnitBytes), @(UACWUnitKilobytes), @(UACWUnitMegabytes), @(UACWUnitGigabytes), @(UACWUnitTerabytes), @(UACWUnitBits), @(UACWUnitKilobits), @(UACWUnitMegabits), @(UACWUnitGigabits), @(UACWUnitTerabits), @(UACWUnitPercent), @(UACWUnitCount), @(UACWUnitBytesPerSecond), @(UACWUnitKilobytesPerSecond), @(UACWUnitMegabytesPerSecond), @(UACWUnitGigabytesPerSecond), @(UACWUnitTerabytesPerSecond), @(UACWUnitBitsPerSecond), @(UACWUnitKilobitsPerSecond), @(UACWUnitMegabitsPerSecond), @(UACWUnitGigabitsPerSecond), @(UACWUnitTerabitsPerSecond), @(UACWUnitCountPerSecond) ]
                                               stringValues:@[ @"None", @"Seconds", @"Microseconds", @"Milliseconds", @"Bytes", @"Kilobytes", @"Megabytes", @"Gigabytes", @"Terabytes", @"Bits", @"Kilobits", @"Megabits", @"Gigabits", @"Terabits", @"Percent", @"Count", @"Bytes/Second", @"Kilobytes/Second", @"Megabytes/Second", @"Gigabytes/Second", @"Terabytes/Second", @"Bits/Second", @"Kilobits/Second", @"Megabits/Second", @"Gigabits/Second", @"Terabits/Second", @"Count/Second" ]
                                               unknownValue:@(UACWUnitUnknown)];
}

+ (NSValueTransformer *)dimensionsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UACWDimension class]];
}

+ (NSValueTransformer *)startTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)endTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)statisticsJSONTransformer
{
    return [NSValueTransformer UA_ENUMArrayTransformerWithValues:@[ @(UACWStatisticSampleCount), @(UACWStatisticAverage), @(UACWStatisticSum), @(UACWStatisticMinimum), @(UACWStatisticMaximum) ]
                                                    stringValues:@[ @"SampleCount", @"Average", @"Sum", @"Minimum", @"Maximum" ]
                                                    unknownValue:@(UACWStatisticUnknown)];
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

- (void)addStatistic:(UACWStatistic)statistic
{
	if (self.statistics == nil)
		[self setStatistics:[NSMutableArray array]];
	[self.statistics addObject:@(statistic)];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UACWGetMetricStatisticsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UACWGetMetricStatisticsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UACWGetMetricStatisticsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UACWGetMetricStatisticsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
