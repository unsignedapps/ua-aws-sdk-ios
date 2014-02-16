//
//  UAEC2DescribeReservedInstancesOfferingsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeReservedInstancesOfferingsResponse.h"
#import "UAEC2ReservedInstancesOffering.h"

@implementation UAEC2DescribeReservedInstancesOfferingsResponse

@synthesize reservedInstancesOfferings=_reservedInstancesOfferings, nextToken=_nextToken;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeReservedInstancesOfferingsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"reservedInstancesOfferings": @"ec2:reservedInstancesOfferingsSet/ec2:item",
        @"nextToken": @"ec2:nextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)reservedInstancesOfferingsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2ReservedInstancesOffering class]];
}

@end
