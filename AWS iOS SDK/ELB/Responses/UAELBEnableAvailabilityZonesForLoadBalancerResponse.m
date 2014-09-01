//
//  UAELBEnableAvailabilityZonesForLoadBalancerResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBEnableAvailabilityZonesForLoadBalancerResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBEnableAvailabilityZonesForLoadBalancerResponse

@synthesize availabilityZones=_availabilityZones;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(availabilityZoneAtIndex:) propertyName:@"availabilityZones"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAvailabilityZone:) propertyName:@"availabilityZones"];
	}
	return self;
}

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

+ (NSValueTransformer *)availabilityZonesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end

#pragma clang diagnostic pop