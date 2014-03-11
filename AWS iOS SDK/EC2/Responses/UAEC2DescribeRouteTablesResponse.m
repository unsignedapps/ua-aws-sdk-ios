//
//  UAEC2DescribeRouteTablesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeRouteTablesResponse.h"
#import "UAEC2RouteTable.h"

@implementation UAEC2DescribeRouteTablesResponse

@synthesize routeTables=_routeTables;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeRouteTablesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"routeTables": @"ec2:routeTableSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)routeTablesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2RouteTable class]];
}

@end
