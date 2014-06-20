//
//  UAELBModifyLoadBalancerAttributesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModifyLoadBalancerAttributesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBLoadBalancerAttributes.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBModifyLoadBalancerAttributesResponse

@synthesize loadBalancerName=_loadBalancerName, loadBalancerAttributes=_loadBalancerAttributes;

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:ModifyLoadBalancerAttributesResponse/ElasticLoadBalancing:ModifyLoadBalancerAttributesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"loadBalancerName": @"ElasticLoadBalancing:LoadBalancerName",
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