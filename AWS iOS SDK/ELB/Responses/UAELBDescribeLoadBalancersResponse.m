//
//  UAELBDescribeLoadBalancersResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDescribeLoadBalancersResponse.h"
#import "UAELBLoadBalancerDescription.h"

@implementation UAELBDescribeLoadBalancersResponse

@synthesize loadBalancerDescriptions=_loadBalancerDescriptions, nextMarker=_nextMarker;

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:DescribeLoadBalancersResponse/ElasticLoadBalancing:DescribeLoadBalancersResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"loadBalancerDescriptions": @"ElasticLoadBalancing:LoadBalancerDescriptions/ElasticLoadBalancing:member",
        @"nextMarker": @"ElasticLoadBalancing:NextMarker"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)loadBalancerDescriptionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAELBLoadBalancerDescription class]];
}

@end
