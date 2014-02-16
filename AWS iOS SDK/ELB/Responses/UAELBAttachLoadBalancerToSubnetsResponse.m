//
//  UAELBAttachLoadBalancerToSubnetsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBAttachLoadBalancerToSubnetsResponse.h"

@implementation UAELBAttachLoadBalancerToSubnetsResponse

@synthesize subnets=_subnets;

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:AttachLoadBalancerToSubnetsResult/ElasticLoadBalancing:AttachLoadBalancerToSubnetsResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"subnets": @"ElasticLoadBalancing:Subnets/ElasticLoadBalancing:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)subnetsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end
