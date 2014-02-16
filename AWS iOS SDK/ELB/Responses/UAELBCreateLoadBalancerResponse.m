//
//  UAELBCreateLoadBalancerResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBCreateLoadBalancerResponse.h"

@implementation UAELBCreateLoadBalancerResponse

@synthesize dNSName=_dNSName;

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:CreateLoadBalancerResponse/ElasticLoadBalancing:CreateLoadBalancerResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"dNSName": @"ElasticLoadBalancing:DNSName"
    }];
    return [keyPaths copy];
}

@end
