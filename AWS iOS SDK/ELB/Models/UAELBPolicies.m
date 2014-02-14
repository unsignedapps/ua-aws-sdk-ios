//
//  UAELBPolicies.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
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

+ (NSValueTransformer *)appCookieStickinessPoliciesQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAELBAppCookieStickinessPolicy class]];
}

+ (NSValueTransformer *)lBCookieStickinessPoliciesQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAELBLBCookieStickinessPolicy class]];
}

+ (NSValueTransformer *)appCookieStickinessPoliciesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAELBAppCookieStickinessPolicy class]];
}

+ (NSValueTransformer *)lBCookieStickinessPoliciesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAELBLBCookieStickinessPolicy class]];
}

+ (NSValueTransformer *)otherPoliciesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end
