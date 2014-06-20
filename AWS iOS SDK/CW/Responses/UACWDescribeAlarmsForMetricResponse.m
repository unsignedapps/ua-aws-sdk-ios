//
//  UACWDescribeAlarmsForMetricResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWDescribeAlarmsForMetricResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UACWMetricAlarm.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UACWMetricAlarm class]];
}

@end

#pragma clang diagnostic pop