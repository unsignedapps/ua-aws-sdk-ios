//
//  UAELBPolicyTypeDescription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBPolicyTypeDescription.h"
#import "UAELBPolicyAttributeTypeDescription.h"

@implementation UAELBPolicyTypeDescription

@synthesize policyTypeName=_policyTypeName, descriptionValue=_descriptionValue, policyAttributeTypeDescriptions=_policyAttributeTypeDescriptions;

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
        @"policyTypeName": @"ElasticLoadBalancing:PolicyTypeName",
        @"descriptionValue": @"ElasticLoadBalancing:Description",
        @"policyAttributeTypeDescriptions": @"ElasticLoadBalancing:PolicyAttributeTypeDescriptions/ElasticLoadBalancing:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)policyAttributeTypeDescriptionsQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAELBPolicyAttributeTypeDescription class]];
}

+ (NSValueTransformer *)policyAttributeTypeDescriptionsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAELBPolicyAttributeTypeDescription class]];
}

@end
