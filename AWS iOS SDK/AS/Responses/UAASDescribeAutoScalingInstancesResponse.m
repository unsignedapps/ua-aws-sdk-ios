//
//  UAASDescribeAutoScalingInstancesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeAutoScalingInstancesResponse.h"
#import "UAASAutoScalingInstanceDetails.h"

@implementation UAASDescribeAutoScalingInstancesResponse

@synthesize autoScalingInstances=_autoScalingInstances, nextToken=_nextToken;

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DescribeAutoScalingInstancesResponse/AutoScaling:DescribeAutoScalingInstancesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"autoScalingInstances": @"AutoScaling:AutoScalingInstances/AutoScaling:member",
        @"nextToken": @"AutoScaling:NextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)autoScalingInstancesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAASAutoScalingInstanceDetails class]];
}

@end
