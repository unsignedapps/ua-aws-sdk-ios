//
//  UAEC2RouteTable.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2RouteTable.h"
#import "UAEC2Route.h"
#import "UAEC2RouteTableAssociation.h"
#import "UAEC2Tag.h"
#import "UAEC2PropagatingVGW.h"

@implementation UAEC2RouteTable

@synthesize routeTableID=_routeTableID, vpcID=_vpcID, routes=_routes, associations=_associations, tags=_tags, propagatingVGWs=_propagatingVGWs;

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
        @"routeTableID": @"ec2:routeTableId",
        @"vpcID": @"ec2:vpcId",
        @"routes": @"ec2:routeSet/ec2:item",
        @"associations": @"ec2:associationSet/ec2:item",
        @"tags": @"ec2:tagSet/ec2:item",
        @"propagatingVGWs": @"ec2:propagatingVgwSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)routesQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2Route class]];
}

+ (NSValueTransformer *)associationsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2RouteTableAssociation class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)propagatingVGWsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2PropagatingVGW class]];
}

+ (NSValueTransformer *)routesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2Route class]];
}

+ (NSValueTransformer *)associationsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2RouteTableAssociation class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)propagatingVGWsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2PropagatingVGW class]];
}

@end
