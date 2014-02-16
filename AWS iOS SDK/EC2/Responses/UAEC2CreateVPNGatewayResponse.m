//
//  UAEC2CreateVPNGatewayResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateVPNGatewayResponse.h"
#import "UAEC2VPNGateway.h"

@implementation UAEC2CreateVPNGatewayResponse

@synthesize vpnGateway=_vpnGateway;

+ (NSString *)XPathPrefix
{
    return @"./ec2:CreateVpnGatewayResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"vpnGateway": @"ec2:vpnGateway"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)vpnGatewayXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2VPNGateway class]];
}

@end
