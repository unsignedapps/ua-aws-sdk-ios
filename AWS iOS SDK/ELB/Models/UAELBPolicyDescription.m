//
//  UAELBPolicyDescription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

- (UAELBPolicyAttributeDescription *)policyAttributeDescriptionAtIndex:(NSUInteger)index
{
    if (self.policyAttributeDescriptions == nil || index >= ([self.policyAttributeDescriptions count]-1))
        return nil;

    return [self.policyAttributeDescriptions objectAtIndex:index];
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
