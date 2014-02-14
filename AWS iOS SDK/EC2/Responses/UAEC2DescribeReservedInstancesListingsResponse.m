//
//  UAEC2DescribeReservedInstancesListingsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeReservedInstancesListingsResponse.h"
#import "UAEC2ReservedInstancesListing.h"

@implementation UAEC2DescribeReservedInstancesListingsResponse

@synthesize reservedInstancesListings=_reservedInstancesListings;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeReservedInstancesListingsResponse/";
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
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2ReservedInstancesListing class]];
}

@end
