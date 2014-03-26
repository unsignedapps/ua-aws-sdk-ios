//
//  UAEC2DescribeVPCPeeringConnectionsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeVPCPeeringConnectionsResponse.h"
#import "UAEC2VPCPeeringConnection.h"

@implementation UAEC2DescribeVPCPeeringConnectionsResponse

@synthesize vpcPeeringConnections=_vpcPeeringConnections;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeVpcPeeringConnectionsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"vpcPeeringConnections": @"ec2:vpcPeeringConnectionSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)vpcPeeringConnectionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2VPCPeeringConnection class]];
}

@end
