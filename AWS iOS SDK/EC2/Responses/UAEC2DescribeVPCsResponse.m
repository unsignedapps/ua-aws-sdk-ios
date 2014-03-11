//
//  UAEC2DescribeVPCsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeVPCsResponse.h"
#import "UAEC2VPC.h"

@implementation UAEC2DescribeVPCsResponse

@synthesize vpcs=_vpcs;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeVpcsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"vpcs": @"ec2:vpcSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)vpcsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2VPC class]];
}

@end
