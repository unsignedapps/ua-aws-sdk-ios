//
//  UAELBRegisterInstancesWithLoadBalancerResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBRegisterInstancesWithLoadBalancerResponse.h"
#import "UAELBInstance.h"

@implementation UAELBRegisterInstancesWithLoadBalancerResponse

@synthesize instances=_instances;

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:RegisterInstancesWithLoadBalancerResponse/ElasticLoadBalancing:RegisterInstancesWithLoadBalancerResult/";
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
