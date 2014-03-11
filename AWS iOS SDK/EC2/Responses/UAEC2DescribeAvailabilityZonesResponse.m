//
//  UAEC2DescribeAvailabilityZonesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeAvailabilityZonesResponse.h"
#import "UAEC2AvailabilityZone.h"

@implementation UAEC2DescribeAvailabilityZonesResponse

@synthesize availabilityZones=_availabilityZones;

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
