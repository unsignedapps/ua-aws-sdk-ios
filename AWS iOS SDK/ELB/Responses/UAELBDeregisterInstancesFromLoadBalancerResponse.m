//
//  UAELBDeregisterInstancesFromLoadBalancerResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDeregisterInstancesFromLoadBalancerResponse.h"
#import "UAELBInstance.h"

@implementation UAELBDeregisterInstancesFromLoadBalancerResponse

@synthesize instances=_instances;

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:DeregisterInstancesFromLoadBalancerResponse/ElasticLoadBalancing:DeregisterInstancesFromLoadBalancerResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"instances": @"ElasticLoadBalancing:Instances/ElasticLoadBalancing:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)instancesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAELBInstance class]];
}

@end
