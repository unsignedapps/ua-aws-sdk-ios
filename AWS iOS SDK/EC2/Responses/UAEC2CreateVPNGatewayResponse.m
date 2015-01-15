//
//  UAEC2CreateVPNGatewayResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateVPNGatewayResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2VPNGateway.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2VPNGateway class]];
}

@end

#pragma clang diagnostic pop