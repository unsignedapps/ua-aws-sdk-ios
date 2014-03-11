//
//  UAASScheduledUpdateGroupAction.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASScheduledUpdateGroupAction.h"

@implementation UAASScheduledUpdateGroupAction

@synthesize autoScalingGroupName=_autoScalingGroupName, scheduledActionName=_scheduledActionName, scheduledActionARN=_scheduledActionARN, time=_time, startTime=_startTime, endTime=_endTime, recurrence=_recurrence, minSize=_minSize, maxSize=_maxSize, desiredCapacity=_desiredCapacity;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"autoScalingGroupName": @"AutoScaling:AutoScalingGroupName",
        @"scheduledActionName": @"AutoScaling:ScheduledActionName",
        @"scheduledActionARN": @"AutoScaling:ScheduledActionARN",
        @"time": @"AutoScaling:Time",
        @"startTime": @"AutoScaling:StartTime",
        @"endTime": @"AutoScaling:EndTime",
        @"recurrence": @"AutoScaling:Recurrence",
        @"minSize": @"AutoScaling:MinSize",
        @"maxSize": @"AutoScaling:MaxSize",
        @"desiredCapacity": @"AutoScaling:DesiredCapacity"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)timeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)startTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)endTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)timeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)startTimeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)endTimeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)minSizeXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)maxSizeXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)desiredCapacityXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
