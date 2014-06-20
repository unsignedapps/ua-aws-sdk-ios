//
//  UAASNotificationConfiguration.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASNotificationConfiguration.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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

#pragma clang diagnostic pop