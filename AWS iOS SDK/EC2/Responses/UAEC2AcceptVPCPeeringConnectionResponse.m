//
//  UAEC2AcceptVPCPeeringConnectionResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AcceptVPCPeeringConnectionResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2VPCPeeringConnection.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2AcceptVPCPeeringConnectionResponse

@synthesize vpcPeeringConnection=_vpcPeeringConnection;

+ (NSString *)XPathPrefix
{
    return @"./ec2:AcceptVpcPeeringConnectionResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"vpcPeeringConnection": @"ec2:vpcPeeringConnection"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)vpcPeeringConnectionXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2VPCPeeringConnection class]];
}

@end

#pragma clang diagnostic pop