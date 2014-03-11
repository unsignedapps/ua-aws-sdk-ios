//
//  UAELBDescribeLoadBalancerAttributesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDescribeLoadBalancerAttributesResponse.h"
#import "UAELBLoadBalancerAttributes.h"

@implementation UAELBDescribeLoadBalancerAttributesResponse

@synthesize loadBalancerAttributes=_loadBalancerAttributes;

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:DescribeLoadBalancerAttributesResponse/ElasticLoadBalancing:DescribeLoadBalancerAttributesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"loadBalancerAttributes": @"ElasticLoadBalancing:LoadBalancerAttributes"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)loadBalancerAttributesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAELBLoadBalancerAttributes class]];
}

@end
