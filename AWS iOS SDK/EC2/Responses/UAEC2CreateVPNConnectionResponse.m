//
//  UAEC2CreateVPNConnectionResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateVPNConnectionResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2VPNConnection.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2CreateVPNConnectionResponse

@synthesize vpnConnection=_vpnConnection;

+ (NSString *)XPathPrefix
{
    return @"./ec2:CreateVpnConnectionResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"vpnConnection": @"ec2:vpnConnection"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)vpnConnectionXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2VPNConnection class]];
}

@end

#pragma clang diagnostic pop