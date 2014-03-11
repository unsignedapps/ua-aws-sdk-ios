//
//  UAASDescribeNotificationConfigurationsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeNotificationConfigurationsResponse.h"
#import "UAASNotificationConfiguration.h"

@implementation UAASDescribeNotificationConfigurationsResponse

@synthesize notificationConfigurations=_notificationConfigurations, nextToken=_nextToken;

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DescribeNotificationConfigurationsResponse/AutoScaling:DescribeNotificationConfigurationsResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"notificationConfigurations": @"AutoScaling:NotificationConfigurations/AutoScaling:member",
        @"nextToken": @"AutoScaling:NextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)notificationConfigurationsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASNotificationConfiguration class]];
}

@end
