//
//  UAASNotificationConfiguration.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASNotificationConfiguration.h"

@implementation UAASNotificationConfiguration

@synthesize autoScalingGroupName=_autoScalingGroupName, topicARN=_topicARN, notificationType=_notificationType;

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
        @"topicARN": @"AutoScaling:TopicARN",
        @"notificationType": @"AutoScaling:NotificationType"
    }];
    return [keyPaths copy];
}

@end
