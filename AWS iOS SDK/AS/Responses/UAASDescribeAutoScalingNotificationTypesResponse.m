//
//  UAASDescribeAutoScalingNotificationTypesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeAutoScalingNotificationTypesResponse.h"

@implementation UAASDescribeAutoScalingNotificationTypesResponse

@synthesize autoScalingNotificationTypes=_autoScalingNotificationTypes;

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DescribeAutoScalingNotificationTypesResponse/AutoScaling:DescribeAutoScalingNotificationTypesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"autoScalingNotificationTypes": @"AutoScaling:AutoScalingNotificationTypes/AutoScaling:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)autoScalingNotificationTypesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end
