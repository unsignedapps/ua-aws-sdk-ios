//
//  UACWGetMetricStatisticsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
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

+ (NSValueTransformer *)dimensionsJSONTransformer
{
  return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[UACWDimension class]];
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
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSArray *(NSArray *values)
    {
		NSNumber *(^stringToEnumBlock)(NSString *value) = ^NSNumber *(NSString *value)
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
		};

		NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:[values count]];
		for (NSString *value in values)
			[array addObject:stringToEnumBlock(value)];
		return [array copy];

    } reverseBlock:^NSArray *(NSArray *values)
    {
		NSString *(^enumToStringBlock)(NSNumber *value) = ^NSString *(NSNumber *value)
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
		};
		
		NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:[values count]];
		for (NSNumber *value in values)
			[array addObject:enumToStringBlock(value)];
		return [array copy];
    }];
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

+ (NSValueTransformer *)dimensionsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UACWDimension class]];
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
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSArray *(NSArray *values)
    {
		NSNumber *(^stringToEnumBlock)(NSString *value) = ^NSNumber *(NSString *value)
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
		};

		NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:[values count]];
		for (NSString *value in values)
			[array addObject:stringToEnumBlock(value)];
		return [array copy];

    } reverseBlock:^NSArray *(NSArray *values)
    {
		NSString *(^enumToStringBlock)(NSNumber *value) = ^NSString *(NSNumber *value)
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
		};
		
		NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:[values count]];
		for (NSNumber *value in values)
			[array addObject:enumToStringBlock(value)];
		return [array copy];
    }];
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
