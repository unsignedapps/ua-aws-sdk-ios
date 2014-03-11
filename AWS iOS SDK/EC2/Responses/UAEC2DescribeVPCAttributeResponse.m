//
//  UAEC2DescribeVPCAttributeResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeVPCAttributeResponse.h"
#import "UAEC2EnableDNSSupport.h"
#import "UAEC2EnableDNSHostnames.h"

@implementation UAEC2DescribeVPCAttributeResponse

@synthesize vpcID=_vpcID, enableDNSSupport=_enableDNSSupport, enableDNSHostnames=_enableDNSHostnames;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeVpcAttributeResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"vpcID": @"ec2:vpcId",
        @"enableDNSSupport": @"ec2:enableDnsSupport",
        @"enableDNSHostnames": @"ec2:enableDnsHostnames"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)enableDNSSupportXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2EnableDNSSupport class]];
}

+ (NSValueTransformer *)enableDNSHostnamesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2EnableDNSHostnames class]];
}

@end
