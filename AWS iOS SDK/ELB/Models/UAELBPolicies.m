//
//  UAELBPolicies.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBPolicies.h"
#import "UAELBAppCookieStickinessPolicy.h"
#import "UAELBLBCookieStickinessPolicy.h"

@implementation UAELBPolicies

@synthesize appCookieStickinessPolicies=_appCookieStickinessPolicies, lBCookieStickinessPolicies=_lBCookieStickinessPolicies, otherPolicies=_otherPolicies;

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

- (UAELBAppCookieStickinessPolicy *)appCookieStickinessPolicyAtIndex:(NSUInteger)index
{
    if (self.appCookieStickinessPolicies == nil || index >= ([self.appCookieStickinessPolicies count]-1))
        return nil;

    return [self.appCookieStickinessPolicies objectAtIndex:index];
}

- (UAELBLBCookieStickinessPolicy *)lBCookieStickinessPolicyAtIndex:(NSUInteger)index
{
    if (self.lBCookieStickinessPolicies == nil || index >= ([self.lBCookieStickinessPolicies count]-1))
        return nil;

    return [self.lBCookieStickinessPolicies objectAtIndex:index];
}

- (NSString *)otherPolicyAtIndex:(NSUInteger)index
{
    if (self.otherPolicies == nil || index >= ([self.otherPolicies count]-1))
        return nil;

    return [self.otherPolicies objectAtIndex:index];
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
