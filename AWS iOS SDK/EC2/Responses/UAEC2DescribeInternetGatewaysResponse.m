//
//  UAEC2DescribeInternetGatewaysResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeInternetGatewaysResponse.h"
#import "UAEC2InternetGateway.h"

@implementation UAEC2DescribeInternetGatewaysResponse

@synthesize internetGateways=_internetGateways;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeInternetGatewaysResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"internetGateways": @"ec2:internetGatewaySet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)internetGatewaysXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2InternetGateway class]];
}

@end
