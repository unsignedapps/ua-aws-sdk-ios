//
//  UACWMetricAlarm.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWMetricAlarm.h"
#import "UAAWSAdditionalAccessors.h"
#import "UACWDimension.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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

+ (NSValueTransformer *)actionsEnabledQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)stateValueQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UACWAlarmStateOK), @(UACWAlarmStateAlarm), @(UACWAlarmStateInsufficientData) ]
                                               stringValues:@[ @"OK", @"ALARM", @"INSUFFICIENT_DATA" ]
                                               unknownValue:@(UACWAlarmStateUnknown)];
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

+ (NSValueTransformer *)actionsEnabledXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
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
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UACWAlarmStateOK), @(UACWAlarmStateAlarm), @(UACWAlarmStateInsufficientData) ]
                                               stringValues:@[ @"OK", @"ALARM", @"INSUFFICIENT_DATA" ]
                                               unknownValue:@(UACWAlarmStateUnknown)];
}

+ (NSValueTransformer *)statisticXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UACWStatisticSampleCount), @(UACWStatisticAverage), @(UACWStatisticSum), @(UACWStatisticMinimum), @(UACWStatisticMaximum) ]
                                               stringValues:@[ @"SampleCount", @"Average", @"Sum", @"Minimum", @"Maximum" ]
                                               unknownValue:@(UACWStatisticUnknown)];
}

+ (NSValueTransformer *)dimensionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UACWDimension class]];
}

+ (NSValueTransformer *)periodXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)unitXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UACWUnitNone), @(UACWUnitSeconds), @(UACWUnitMicroseconds), @(UACWUnitMilliseconds), @(UACWUnitBytes), @(UACWUnitKilobytes), @(UACWUnitMegabytes), @(UACWUnitGigabytes), @(UACWUnitTerabytes), @(UACWUnitBits), @(UACWUnitKilobits), @(UACWUnitMegabits), @(UACWUnitGigabits), @(UACWUnitTerabits), @(UACWUnitPercent), @(UACWUnitCount), @(UACWUnitBytesPerSecond), @(UACWUnitKilobytesPerSecond), @(UACWUnitMegabytesPerSecond), @(UACWUnitGigabytesPerSecond), @(UACWUnitTerabytesPerSecond), @(UACWUnitBitsPerSecond), @(UACWUnitKilobitsPerSecond), @(UACWUnitMegabitsPerSecond), @(UACWUnitGigabitsPerSecond), @(UACWUnitTerabitsPerSecond), @(UACWUnitCountPerSecond) ]
                                               stringValues:@[ @"None", @"Seconds", @"Microseconds", @"Milliseconds", @"Bytes", @"Kilobytes", @"Megabytes", @"Gigabytes", @"Terabytes", @"Bits", @"Kilobits", @"Megabits", @"Gigabits", @"Terabits", @"Percent", @"Count", @"Bytes/Second", @"Kilobytes/Second", @"Megabytes/Second", @"Gigabytes/Second", @"Terabytes/Second", @"Bits/Second", @"Kilobits/Second", @"Megabits/Second", @"Gigabits/Second", @"Terabits/Second", @"Count/Second" ]
                                               unknownValue:@(UACWUnitUnknown)];
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
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UACWMetricAlarmComparisonOperatorGreaterThanOrEqualToThreshold), @(UACWMetricAlarmComparisonOperatorGreaterThanThreshold), @(UACWMetricAlarmComparisonOperatorLessThanThreshold), @(UACWMetricAlarmComparisonOperatorLessThanOrEqualToThreshold) ]
                                               stringValues:@[ @"GreaterThanOrEqualToThreshold", @"GreaterThanThreshold", @"LessThanThreshold", @"LessThanOrEqualToThreshold" ]
                                               unknownValue:@(UACWMetricAlarmComparisonOperatorUnknown)];
}

@end

#pragma clang diagnostic pop