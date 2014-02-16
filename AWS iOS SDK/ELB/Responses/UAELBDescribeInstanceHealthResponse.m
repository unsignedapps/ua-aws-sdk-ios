//
//  UAELBDescribeInstanceHealthResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDescribeInstanceHealthResponse.h"
#import "UAELBInstanceStateDetails.h"

@implementation UAELBDescribeInstanceHealthResponse

@synthesize instanceStates=_instanceStates;

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:DescribeInstanceHealthResponse/ElasticLoadBalancing:DescribeInstanceHealthResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"instanceStates": @"ElasticLoadBalancing:InstanceStates/ElasticLoadBalancing:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)instanceStatesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAELBInstanceStateDetails class]];
}

@end
