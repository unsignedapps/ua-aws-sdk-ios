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

+ (NSValueTransformer *)dimensionsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UACWDimension class]];
}

+ (NSValueTransformer *)timestampQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)statisticValuesQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UACWStatisticSet class]];
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

+ (NSValueTransformer *)dimensionsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UACWDimension class]];
}

+ (NSValueTransformer *)timestampXMLTransformer
{
    return [NSValueTransformer mtl_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)valueXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)statisticValuesXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UACWStatisticSet class]];
}

+ (NSValueTransformer *)unitXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UACWUnitUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
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

@end
