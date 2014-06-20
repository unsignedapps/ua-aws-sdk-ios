//
//  UAELBPolicyDescription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBPolicyDescription.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBPolicyAttributeDescription.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAELBPolicyAttributeDescription class]];
}

+ (NSValueTransformer *)policyAttributeDescriptionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAELBPolicyAttributeDescription class]];
}

@end

#pragma clang diagnostic pop