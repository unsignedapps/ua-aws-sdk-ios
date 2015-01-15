//
//  UAELBDescribeLoadBalancerAttributesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDescribeLoadBalancerAttributesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBLoadBalancerAttributes.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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

#pragma clang diagnostic pop