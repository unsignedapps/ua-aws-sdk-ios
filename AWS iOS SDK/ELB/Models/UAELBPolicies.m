//
//  UAELBPolicies.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBPolicies.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBAppCookieStickinessPolicy.h"
#import "UAELBLBCookieStickinessPolicy.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBPolicies

@synthesize appCookieStickinessPolicies=_appCookieStickinessPolicies, lBCookieStickinessPolicies=_lBCookieStickinessPolicies, otherPolicies=_otherPolicies;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(appCookieStickinessPolicyAtIndex:) propertyName:@"appCookieStickinessPolicies"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(lBCookieStickinessPolicyAtIndex:) propertyName:@"lBCookieStickinessPolicies"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(otherPolicyAtIndex:) propertyName:@"otherPolicies"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAppCookieStickinessPolicy:) propertyName:@"appCookieStickinessPolicies"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addLBCookieStickinessPolicy:) propertyName:@"lBCookieStickinessPolicies"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addOtherPolicy:) propertyName:@"otherPolicies"];
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
        @"appCookieStickinessPolicies": @"ElasticLoadBalancing:AppCookieStickinessPolicies/ElasticLoadBalancing:member",
        @"lBCookieStickinessPolicies": @"ElasticLoadBalancing:LBCookieStickinessPolicies/ElasticLoadBalancing:member",
        @"otherPolicies": @"ElasticLoadBalancing:OtherPolicies/ElasticLoadBalancing:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)appCookieStickinessPoliciesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAELBAppCookieStickinessPolicy class]];
}

+ (NSValueTransformer *)lBCookieStickinessPoliciesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAELBLBCookieStickinessPolicy class]];
}

+ (NSValueTransformer *)appCookieStickinessPoliciesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAELBAppCookieStickinessPolicy class]];
}

+ (NSValueTransformer *)lBCookieStickinessPoliciesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAELBLBCookieStickinessPolicy class]];
}

+ (NSValueTransformer *)otherPoliciesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end

#pragma clang diagnostic pop