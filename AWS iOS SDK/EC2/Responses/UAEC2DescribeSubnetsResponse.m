//
//  UAEC2DescribeSubnetsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeSubnetsResponse.h"
#import "UAEC2Subnet.h"

@implementation UAEC2DescribeSubnetsResponse

@synthesize subnets=_subnets;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeSubnetsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"subnets": @"ec2:subnetSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)subnetsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2Subnet class]];
}

@end
