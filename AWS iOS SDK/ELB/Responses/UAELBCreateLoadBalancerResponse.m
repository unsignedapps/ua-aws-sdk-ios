//
//  UAELBCreateLoadBalancerResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBCreateLoadBalancerResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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

#pragma clang diagnostic pop