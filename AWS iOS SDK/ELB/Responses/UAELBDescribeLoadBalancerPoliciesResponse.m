//
//  UAELBDescribeLoadBalancerPoliciesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDescribeLoadBalancerPoliciesResponse.h"
#import "UAELBPolicyDescription.h"

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

- (UAELBPolicyDescription *)policyDescriptionAtIndex:(NSUInteger)index
{
    if (self.policyDescriptions == nil || index >= ([self.policyDescriptions count]-1))
        return nil;

    return [self.policyDescriptions objectAtIndex:index];
}

+ (NSValueTransformer *)policyDescriptionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAELBPolicyDescription class]];
}

@end
