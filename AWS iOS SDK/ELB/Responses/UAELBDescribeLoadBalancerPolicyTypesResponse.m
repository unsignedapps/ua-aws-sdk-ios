//
//  UAELBDescribeLoadBalancerPolicyTypesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDescribeLoadBalancerPolicyTypesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBPolicyTypeDescription.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBDescribeLoadBalancerPolicyTypesResponse

@synthesize policyTypeDescriptions=_policyTypeDescriptions;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(policyTypeDescriptionAtIndex:) propertyName:@"policyTypeDescriptions"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addPolicyTypeDescription:) propertyName:@"policyTypeDescriptions"];
	}
	return self;
}

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

#pragma clang diagnostic pop