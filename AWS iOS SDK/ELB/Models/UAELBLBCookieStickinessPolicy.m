//
//  UAELBLBCookieStickinessPolicy.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBLBCookieStickinessPolicy.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBLBCookieStickinessPolicy

@synthesize policyName=_policyName, cookieExpirationPeriod=_cookieExpirationPeriod;

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
        @"cookieExpirationPeriod": @"ElasticLoadBalancing:CookieExpirationPeriod"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)cookieExpirationPeriodXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end

#pragma clang diagnostic pop