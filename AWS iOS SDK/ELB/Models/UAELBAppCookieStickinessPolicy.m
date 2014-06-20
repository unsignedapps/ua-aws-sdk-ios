//
//  UAELBAppCookieStickinessPolicy.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBAppCookieStickinessPolicy.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBAppCookieStickinessPolicy

@synthesize policyName=_policyName, cookieName=_cookieName;

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
        @"cookieName": @"ElasticLoadBalancing:CookieName"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop