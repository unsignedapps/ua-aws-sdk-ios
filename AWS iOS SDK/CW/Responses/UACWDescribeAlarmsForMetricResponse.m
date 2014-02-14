//
//  UACWDescribeAlarmsForMetricResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
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

+ (NSValueTransformer *)metricAlarmsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UACWMetricAlarm class]];
}

@end
