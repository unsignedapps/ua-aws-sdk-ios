//
//  UAEC2DescribeCustomerGatewaysResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeCustomerGatewaysResponse.h"
#import "UAEC2CustomerGateway.h"

@implementation UAEC2DescribeCustomerGatewaysResponse

@synthesize customerGateways=_customerGateways;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeCustomerGatewaysResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"customerGateways": @"ec2:customerGatewaySet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)customerGatewaysXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2CustomerGateway class]];
}

@end
