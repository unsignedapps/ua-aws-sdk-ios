//
//  UAELBDescribeLoadBalancerPolicyTypesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDescribeLoadBalancerPolicyTypesResponse.h"
#import "UAELBPolicyTypeDescription.h"

@implementation UAELBDescribeLoadBalancerPolicyTypesResponse

@synthesize policyTypeDescriptions=_policyTypeDescriptions;

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:DescribeLoadBalancerPolicyTypesResponse/ElasticLoadBalancing:DescribeLoadBalancerPolicyTypesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"policyTypeDescriptions": @"ElasticLoadBalancing:PolicyTypeDescriptions/ElasticLoadBalancing:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)policyTypeDescriptionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAELBPolicyTypeDescription class]];
}

@end
