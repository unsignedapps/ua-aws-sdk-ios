//
//  UAELBPolicyDescription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBPolicyDescription.h"
#import "UAELBPolicyAttributeDescription.h"

@implementation UAELBPolicyDescription

@synthesize policyName=_policyName, policyTypeName=_policyTypeName, policyAttributeDescriptions=_policyAttributeDescriptions;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"policyName": @"ElasticLoadBalancing:PolicyName",
        @"policyTypeName": @"ElasticLoadBalancing:PolicyTypeName",
        @"policyAttributeDescriptions": @"ElasticLoadBalancing:PolicyAttributeDescriptions/ElasticLoadBalancing:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)policyAttributeDescriptionsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAELBPolicyAttributeDescription class]];
}

+ (NSValueTransformer *)policyAttributeDescriptionsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAELBPolicyAttributeDescription class]];
}

@end
