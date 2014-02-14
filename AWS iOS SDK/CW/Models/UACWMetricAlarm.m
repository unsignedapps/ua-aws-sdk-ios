//
//  UACWMetricAlarm.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UACWMetricAlarm.h"
#import "UACWDimension.h"

@implementation UACWMetricAlarm

@synthesize alarmName=_alarmName, alarmARN=_alarmARN, alarmDescription=_alarmDescription, alarmConfigurationUpdatedTimestamp=_alarmConfigurationUpdatedTimestamp, actionsEnabled=_actionsEnabled, oKActions=_oKActions, alarmActions=_alarmActions, insufficientDataActions=_insufficientDataActions, stateValue=_stateValue, stateReason=_stateReason, stateReasonData=_stateReasonData, stateUpdatedTimestamp=_stateUpdatedTimestamp, metricName=_metricName, namespace=_namespace, statistic=_statistic, dimensions=_dimensions, period=_period, unit=_unit, evaluationPeriods=_evaluationPeriods, threshold=_threshold, comparisonOperator=_comparisonOperator;

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
        @"alarmName": @"cloudwatch:AlarmName",
        @"alarmARN": @"cloudwatch:AlarmArn",
        @"alarmDescription": @"cloudwatch:AlarmDescription",
        @"alarmConfigurationUpdatedTimestamp": @"cloudwatch:AlarmConfigurationUpdatedTimestamp",
        @"actionsEnabled": @"cloudwatch:ActionsEnabled",
        @"oKActions": @"cloudwatch:OKActions/cloudwatch:member",
        @"alarmActions": @"cloudwatch:AlarmActions/cloudwatch:member",
        @"insufficientDataActions": @"cloudwatch:InsufficientDataActions/cloudwatch:member",
        @"stateValue": @"cloudwatch:StateValue",
        @"stateReason": @"cloudwatch:StateReason",
        @"stateReasonData": @"cloudwatch:StateReasonData",
        @"stateUpdatedTimestamp": @"cloudwatch:StateUpdatedTimestamp",
        @"metricName": @"cloudwatch:MetricName",
        @"namespace": @"cloudwatch:Namespace",
        @"statistic": @"cloudwatch:Statistic",
        @"dimensions": @"cloudwatch:Dimensions/cloudwatch:member",
        @"period": @"cloudwatch:Period",
        @"unit": @"cloudwatch:Unit",
        @"evaluationPeriods": @"cloudwatch:EvaluationPeriods",
        @"threshold": @"cloudwatch:Threshold",
        @"comparisonOperator": @"cloudwatch:ComparisonOperator"
    }];
    return [keyPaths copy];
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

+ (NSValueTransformer *)oKActionsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)alarmActionsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)insufficientDataActionsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)stateValueXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UACWAlarmStateUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
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

+ (NSValueTransformer *)statisticXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UACWStatisticUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
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

+ (NSValueTransformer *)dimensionsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UACWDimension class]];
}

+ (NSValueTransformer *)periodXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
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

+ (NSValueTransformer *)evaluationPeriodsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)thresholdXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)comparisonOperatorXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UACWMetricAlarmComparisonOperatorUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
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

@end
