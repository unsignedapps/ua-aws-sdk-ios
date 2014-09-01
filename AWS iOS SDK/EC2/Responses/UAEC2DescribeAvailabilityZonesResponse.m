//
//  UAEC2DescribeAvailabilityZonesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeAvailabilityZonesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2AvailabilityZone.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeAvailabilityZonesResponse

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
    return @"./ec2:DescribeAvailabilityZonesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"availabilityZones": @"ec2:availabilityZoneInfo/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)availabilityZonesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2AvailabilityZone class]];
}

@end

#pragma clang diagnostic pop