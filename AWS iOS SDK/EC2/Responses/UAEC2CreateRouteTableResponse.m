//
//  UAEC2CreateRouteTableResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateRouteTableResponse.h"
#import "UAEC2RouteTable.h"

@implementation UAEC2CreateRouteTableResponse

@synthesize routeTable=_routeTable;

+ (NSString *)XPathPrefix
{
    return @"./ec2:CreateRouteTableResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"routeTable": @"ec2:routeTable"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)routeTableXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2RouteTable class]];
}

@end
