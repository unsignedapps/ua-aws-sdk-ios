//
//  UAEC2VPNConnection.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2VPNConnection.h"
#import "UAEC2Tag.h"
#import "UAEC2VGWTelemetry.h"
#import "UAEC2Options.h"
#import "UAEC2VPNStaticRoute.h"

@implementation UAEC2VPNConnection

@synthesize vpnConnectionID=_vpnConnectionID, state=_state, customerGatewayConfiguration=_customerGatewayConfiguration, type=_type, customerGatewayID=_customerGatewayID, vpnGatewayID=_vpnGatewayID, tags=_tags, vgwTelemetry=_vgwTelemetry, options=_options, routes=_routes;

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
        @"vpnConnectionID": @"ec2:vpnConnectionId",
        @"state": @"ec2:state",
        @"customerGatewayConfiguration": @"ec2:customerGatewayConfiguration",
        @"type": @"ec2:type",
        @"customerGatewayID": @"ec2:customerGatewayId",
        @"vpnGatewayID": @"ec2:vpnGatewayId",
        @"tags": @"ec2:tagSet/ec2:item",
        @"vgwTelemetry": @"ec2:vgwTelemetry/ec2:item",
        @"options": @"ec2:options",
        @"routes": @"ec2:routes/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)vgwTelemetryQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2VGWTelemetry class]];
}

+ (NSValueTransformer *)optionsQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2Options class]];
}

+ (NSValueTransformer *)routesQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2VPNStaticRoute class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)vgwTelemetryXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2VGWTelemetry class]];
}

+ (NSValueTransformer *)optionsXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2Options class]];
}

+ (NSValueTransformer *)routesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2VPNStaticRoute class]];
}

@end
