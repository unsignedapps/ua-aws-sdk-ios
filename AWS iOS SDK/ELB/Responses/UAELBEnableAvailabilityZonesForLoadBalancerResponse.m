//
//  UAELBEnableAvailabilityZonesForLoadBalancerResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBEnableAvailabilityZonesForLoadBalancerResponse.h"

@implementation UAELBEnableAvailabilityZonesForLoadBalancerResponse

@synthesize availabilityZones=_availabilityZones;

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:EnableAvailabilityZonesForLoadBalancerResponse/ElasticLoadBalancing:EnableAvailabilityZonesForLoadBalancerResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"availabilityZones": @"ElasticLoadBalancing:AvailabilityZones/ElasticLoadBalancing:member"
    }];
    return [keyPaths copy];
}

- (NSString *)availabilityZoneAtIndex:(NSUInteger)index
{
    if (self.availabilityZones == nil || index >= ([self.availabilityZones count]-1))
        return nil;

    return [self.availabilityZones objectAtIndex:index];
}

+ (NSValueTransformer *)availabilityZonesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end
