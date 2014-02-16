//
//  UAELBApplySecurityGroupsToLoadBalancerResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBApplySecurityGroupsToLoadBalancerResponse.h"

@implementation UAELBApplySecurityGroupsToLoadBalancerResponse

@synthesize securityGroups=_securityGroups;

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:ApplySecurityGroupsToLoadBalancerResult/ElasticLoadBalancing:ApplySecurityGroupsToLoadBalancerResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"securityGroups": @"ElasticLoadBalancing:SecurityGroups/ElasticLoadBalancing:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)securityGroupsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end
