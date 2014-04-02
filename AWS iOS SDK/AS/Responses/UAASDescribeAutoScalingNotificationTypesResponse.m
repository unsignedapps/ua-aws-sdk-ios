//
//  UAASDescribeAutoScalingNotificationTypesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

- (NSString *)autoScalingNotificationTypeAtIndex:(NSUInteger)index
{
    if (self.autoScalingNotificationTypes == nil || index >= ([self.autoScalingNotificationTypes count]-1))
        return nil;

    return [self.autoScalingNotificationTypes objectAtIndex:index];
}

+ (NSValueTransformer *)autoScalingNotificationTypesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end
