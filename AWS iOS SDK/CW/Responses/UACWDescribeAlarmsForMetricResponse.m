//
//  UACWDescribeAlarmsForMetricResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWDescribeAlarmsForMetricResponse.h"
#import "UACWMetricAlarm.h"

@implementation UACWDescribeAlarmsForMetricResponse

@synthesize metricAlarms=_metricAlarms;

+ (NSString *)XPathPrefix
{
    return @"./cloudwatch:DescribeAlarmsForMetricResponse/cloudwatch:DescribeAlarmsForMetricResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UACWResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"metricAlarms": @"cloudwatch:MetricAlarms/cloudwatch:member"
    }];
    return [keyPaths copy];
}

- (UACWMetricAlarm *)metricAlarmAtIndex:(NSUInteger)index
{
    if (self.metricAlarms == nil || index >= ([self.metricAlarms count]-1))
        return nil;

    return [self.metricAlarms objectAtIndex:index];
}

+ (NSValueTransformer *)metricAlarmsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UACWMetricAlarm class]];
}

@end
