//
//  UAELBDisableAvailabilityZonesForLoadBalancerResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDisableAvailabilityZonesForLoadBalancerResponse.h"

@implementation UAELBDisableAvailabilityZonesForLoadBalancerResponse

@synthesize availabilityZones=_availabilityZones;

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:DisableAvailabilityZonesForLoadBalancerResponse/ElasticLoadBalancing:DisableAvailabilityZonesForLoadBalancerResult/";
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

+ (NSValueTransformer *)availabilityZonesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end
