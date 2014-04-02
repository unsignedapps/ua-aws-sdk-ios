//
//  UACWMetricDatum.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWMetricDatum.h"
#import "UACWDimension.h"
#import "UACWStatisticSet.h"

@implementation UACWMetricDatum

@synthesize metricName=_metricName, dimensions=_dimensions, timestamp=_timestamp, value=_value, statisticValues=_statisticValues, unit=_unit;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UACWModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"metricName": @"MetricName",
        @"dimensions": @"Dimensions.member",
        @"timestamp": @"Timestamp",
        @"value": @"Value",
        @"statisticValues": @"StatisticValues",
        @"unit": @"Unit"
    }];
    return [keyPaths copy];
}

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UACWModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"metricName": @"cloudwatch:MetricName",
        @"dimensions": @"cloudwatch:Dimensions.member/cloudwatch:Dimensions",
        @"timestamp": @"cloudwatch:Timestamp",
        @"value": @"cloudwatch:Value",
        @"statisticValues": @"cloudwatch:StatisticValues",
        @"unit": @"cloudwatch:Unit"
    }];
    return [keyPaths copy];
}

- (UACWDimension *)dimensionAtIndex:(NSUInteger)index
{
    if (self.dimensions == nil || index >= ([self.dimensions count]-1))
        return nil;

    return [self.dimensions objectAtIndex:index];
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

- (void)setTimestamp:(NSDate *)timestamp
{
	_timestamp = timestamp;
	
	if (![self.UA_dirtyProperties containsObject:@"timestamp"])
		[self.UA_dirtyProperties addObject:@"timestamp"];
}

- (void)setValue:(NSNumber *)value
{
	_value = value;
	
	if (![self.UA_dirtyProperties containsObject:@"value"])
		[self.UA_dirtyProperties addObject:@"value"];
}

- (void)setStatisticValues:(UACWStatisticSet *)statisticValues
{
	_statisticValues = statisticValues;
	
	if (![self.UA_dirtyProperties containsObject:@"statisticValues"])
		[self.UA_dirtyProperties addObject:@"statisticValues"];
}

- (void)setUnit:(UACWUnit)unit
{
	_unit = unit;
	
	if (![self.UA_dirtyProperties containsObject:@"unit"])
		[self.UA_dirtyProperties addObject:@"unit"];
}

+ (NSValueTransformer *)dimensionsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UACWDimension class]];
}

+ (NSValueTransformer *)timestampQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)statisticValuesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UACWStatisticSet class]];
}

+ (NSValueTransformer *)unitQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UACWUnitNone), @(UACWUnitSeconds), @(UACWUnitMicroseconds), @(UACWUnitMilliseconds), @(UACWUnitBytes), @(UACWUnitKilobytes), @(UACWUnitMegabytes), @(UACWUnitGigabytes), @(UACWUnitTerabytes), @(UACWUnitBits), @(UACWUnitKilobits), @(UACWUnitMegabits), @(UACWUnitGigabits), @(UACWUnitTerabits), @(UACWUnitPercent), @(UACWUnitCount), @(UACWUnitBytesPerSecond), @(UACWUnitKilobytesPerSecond), @(UACWUnitMegabytesPerSecond), @(UACWUnitGigabytesPerSecond), @(UACWUnitTerabytesPerSecond), @(UACWUnitBitsPerSecond), @(UACWUnitKilobitsPerSecond), @(UACWUnitMegabitsPerSecond), @(UACWUnitGigabitsPerSecond), @(UACWUnitTerabitsPerSecond), @(UACWUnitCountPerSecond) ]
                                               stringValues:@[ @"None", @"Seconds", @"Microseconds", @"Milliseconds", @"Bytes", @"Kilobytes", @"Megabytes", @"Gigabytes", @"Terabytes", @"Bits", @"Kilobits", @"Megabits", @"Gigabits", @"Terabits", @"Percent", @"Count", @"Bytes/Second", @"Kilobytes/Second", @"Megabytes/Second", @"Gigabytes/Second", @"Terabytes/Second", @"Bits/Second", @"Kilobits/Second", @"Megabits/Second", @"Gigabits/Second", @"Terabits/Second", @"Count/Second" ]
                                               unknownValue:@(UACWUnitUnknown)];
}

+ (NSValueTransformer *)dimensionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UACWDimension class]];
}

+ (NSValueTransformer *)timestampXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)valueXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)statisticValuesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UACWStatisticSet class]];
}

+ (NSValueTransformer *)unitXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UACWUnitNone), @(UACWUnitSeconds), @(UACWUnitMicroseconds), @(UACWUnitMilliseconds), @(UACWUnitBytes), @(UACWUnitKilobytes), @(UACWUnitMegabytes), @(UACWUnitGigabytes), @(UACWUnitTerabytes), @(UACWUnitBits), @(UACWUnitKilobits), @(UACWUnitMegabits), @(UACWUnitGigabits), @(UACWUnitTerabits), @(UACWUnitPercent), @(UACWUnitCount), @(UACWUnitBytesPerSecond), @(UACWUnitKilobytesPerSecond), @(UACWUnitMegabytesPerSecond), @(UACWUnitGigabytesPerSecond), @(UACWUnitTerabytesPerSecond), @(UACWUnitBitsPerSecond), @(UACWUnitKilobitsPerSecond), @(UACWUnitMegabitsPerSecond), @(UACWUnitGigabitsPerSecond), @(UACWUnitTerabitsPerSecond), @(UACWUnitCountPerSecond) ]
                                               stringValues:@[ @"None", @"Seconds", @"Microseconds", @"Milliseconds", @"Bytes", @"Kilobytes", @"Megabytes", @"Gigabytes", @"Terabytes", @"Bits", @"Kilobits", @"Megabits", @"Gigabits", @"Terabits", @"Percent", @"Count", @"Bytes/Second", @"Kilobytes/Second", @"Megabytes/Second", @"Gigabytes/Second", @"Terabytes/Second", @"Bits/Second", @"Kilobits/Second", @"Megabits/Second", @"Gigabits/Second", @"Terabits/Second", @"Count/Second" ]
                                               unknownValue:@(UACWUnitUnknown)];
}

@end
