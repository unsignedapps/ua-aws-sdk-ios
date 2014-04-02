//
//  UACWDescribeAlarmsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWDescribeAlarmsResponse.h"
#import "UACWMetricAlarm.h"

@implementation UACWDescribeAlarmsResponse

@synthesize metricAlarms=_metricAlarms, nextToken=_nextToken;

+ (NSString *)XPathPrefix
{
    return @"./cloudwatch:DescribeAlarmsResponse/cloudwatch:DescribeAlarmsResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UACWResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"metricAlarms": @"cloudwatch:MetricAlarms/cloudwatch:member",
        @"nextToken": @"cloudwatch:NextToken"
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
