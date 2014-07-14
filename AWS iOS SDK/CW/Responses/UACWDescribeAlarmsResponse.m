//
//  UACWDescribeAlarmsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWDescribeAlarmsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UACWMetricAlarm.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UACWDescribeAlarmsResponse

@synthesize metricAlarms=_metricAlarms, nextToken=_nextToken;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(metricAlarmAtIndex:) propertyName:@"metricAlarms"];
	}
	return self;
}

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
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UACWMetricAlarm class]];
}

@end

#pragma clang diagnostic pop