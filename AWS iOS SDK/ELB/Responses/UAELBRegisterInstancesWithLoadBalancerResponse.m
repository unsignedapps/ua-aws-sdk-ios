//
//  UAELBRegisterInstancesWithLoadBalancerResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

- (UAELBInstance *)instanceAtIndex:(NSUInteger)index
{
    if (self.instances == nil || index >= ([self.instances count]-1))
        return nil;

    return [self.instances objectAtIndex:index];
}

+ (NSValueTransformer *)instancesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAELBInstance class]];
}

@end
