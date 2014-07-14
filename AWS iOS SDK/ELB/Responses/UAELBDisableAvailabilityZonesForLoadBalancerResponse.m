//
//  UAELBDisableAvailabilityZonesForLoadBalancerResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDisableAvailabilityZonesForLoadBalancerResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBDisableAvailabilityZonesForLoadBalancerResponse

@synthesize availabilityZones=_availabilityZones;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(availabilityZoneAtIndex:) propertyName:@"availabilityZones"];
	}
	return self;
}

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

#pragma clang diagnostic pop