//
//  UAELBDetachLoadBalancerFromSubnetsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDetachLoadBalancerFromSubnetsResponse.h"

@implementation UAELBDetachLoadBalancerFromSubnetsResponse

@synthesize subnets=_subnets;

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:DetachLoadBalancerFromSubnetsResponse/ElasticLoadBalancing:DetachLoadBalancerFromSubnetsResult/";
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

- (NSString *)subnetAtIndex:(NSUInteger)index
{
    if (self.subnets == nil || index >= ([self.subnets count]-1))
        return nil;

    return [self.subnets objectAtIndex:index];
}

+ (NSValueTransformer *)subnetsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end
