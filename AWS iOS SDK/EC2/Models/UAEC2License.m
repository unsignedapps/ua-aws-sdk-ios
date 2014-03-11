//
//  UAEC2License.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2License.h"
#import "UAEC2LicenseCapacity.h"
#import "UAEC2Tag.h"

@implementation UAEC2License

@synthesize licenseID=_licenseID, type=_type, pool=_pool, capacities=_capacities, tags=_tags;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"licenseID": @"ec2:licenseId",
        @"type": @"ec2:type",
        @"pool": @"ec2:pool",
        @"capacities": @"ec2:capacitySet/ec2:item",
        @"tags": @"ec2:tagSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)capacitiesQueryStringTransformer
{
  return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2LicenseCapacity class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
  return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)capacitiesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2LicenseCapacity class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

@end
