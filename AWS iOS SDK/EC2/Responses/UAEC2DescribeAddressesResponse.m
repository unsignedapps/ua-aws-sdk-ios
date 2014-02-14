//
//  UAEC2DescribeAddressesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeAddressesResponse.h"
#import "UAEC2Address.h"

@implementation UAEC2DescribeAddressesResponse

@synthesize addresses=_addresses;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeAddressesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"addresses": @"ec2:addressesSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)addressesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2Address class]];
}

@end
