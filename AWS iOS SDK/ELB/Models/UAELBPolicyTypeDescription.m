//
//  UAELBPolicyTypeDescription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBPolicyTypeDescription.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBPolicyAttributeTypeDescription.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBPolicyTypeDescription

@synthesize policyTypeName=_policyTypeName, descriptionValue=_descriptionValue, policyAttributeTypeDescriptions=_policyAttributeTypeDescriptions;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(policyAttributeTypeDescriptionAtIndex:) propertyName:@"policyAttributeTypeDescriptions"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addPolicyAttributeTypeDescription:) propertyName:@"policyAttributeTypeDescriptions"];
	}
	return self;
}

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
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAELBPolicyAttributeTypeDescription class]];
}

+ (NSValueTransformer *)policyAttributeTypeDescriptionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAELBPolicyAttributeTypeDescription class]];
}

@end

#pragma clang diagnostic pop