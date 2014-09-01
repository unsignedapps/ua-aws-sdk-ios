//
//  UAEC2VPNConnection.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2VPNConnection.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2Tag.h"
#import "UAEC2VGWTelemetry.h"
#import "UAEC2Options.h"
#import "UAEC2VPNStaticRoute.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2VPNConnection

@synthesize vpnConnectionID=_vpnConnectionID, state=_state, customerGatewayConfiguration=_customerGatewayConfiguration, type=_type, customerGatewayID=_customerGatewayID, vpnGatewayID=_vpnGatewayID, tags=_tags, vgwTelemetry=_vgwTelemetry, options=_options, routes=_routes;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(tagAtIndex:) propertyName:@"tags"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(vgwTelemetryAtIndex:) propertyName:@"vgwTelemetry"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(routeAtIndex:) propertyName:@"routes"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addTag:) propertyName:@"tags"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addVGWTelemetry:) propertyName:@"vgwTelemetry"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addRoute:) propertyName:@"routes"];
	}
	return self;
}

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
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)vgwTelemetryQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2VGWTelemetry class]];
}

+ (NSValueTransformer *)optionsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2Options class]];
}

+ (NSValueTransformer *)routesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2VPNStaticRoute class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)vgwTelemetryXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2VGWTelemetry class]];
}

+ (NSValueTransformer *)optionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2Options class]];
}

+ (NSValueTransformer *)routesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2VPNStaticRoute class]];
}

@end

#pragma clang diagnostic pop