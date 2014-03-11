//
//  UAEC2CreateReservedInstancesListingResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateReservedInstancesListingResponse.h"
#import "UAEC2ReservedInstancesListing.h"

@implementation UAEC2CreateReservedInstancesListingResponse

@synthesize reservedInstancesListings=_reservedInstancesListings;

+ (NSString *)XPathPrefix
{
    return @"./ec2:CreateReservedInstancesListingResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"reservedInstancesListings": @"ec2:reservedInstancesListingsSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)reservedInstancesListingsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2ReservedInstancesListing class]];
}

@end
