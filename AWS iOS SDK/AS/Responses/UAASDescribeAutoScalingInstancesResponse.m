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

- (UAASAutoScalingInstanceDetails *)autoScalingInstancesAtIndex:(NSUInteger)index
{
    if (self.autoScalingInstances == nil || index >= ([self.autoScalingInstances count]-1))
        return nil;

    return [self.autoScalingInstances objectAtIndex:index];
}

+ (NSValueTransformer *)autoScalingInstancesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASAutoScalingInstanceDetails class]];
}

@end
