//
//  UACWDescribeAlarmsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
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

+ (NSValueTransformer *)metricAlarmsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UACWMetricAlarm class]];
}

@end
