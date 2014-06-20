//
//  UAELBDescribeLoadBalancerPoliciesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDescribeLoadBalancerPoliciesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBPolicyDescription.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBDescribeLoadBalancerPoliciesResponse

@synthesize policyDescriptions=_policyDescriptions;

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:DescribeLoadBalancerPoliciesResponse/ElasticLoadBalancing:DescribeLoadBalancerPoliciesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"policyDescriptions": @"ElasticLoadBalancing:PolicyDescriptions/ElasticLoadBalancing:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)policyDescriptionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAELBPolicyDescription class]];
}

@end

#pragma clang diagnostic pop