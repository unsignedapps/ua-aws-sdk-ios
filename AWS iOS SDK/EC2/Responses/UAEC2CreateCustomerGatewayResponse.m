//
//  UAEC2CreateCustomerGatewayResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateCustomerGatewayResponse.h"
#import "UAEC2CustomerGateway.h"

@implementation UAEC2CreateCustomerGatewayResponse

@synthesize customerGateway=_customerGateway;

+ (NSString *)XPathPrefix
{
    return @"./ec2:CreateCustomerGatewayResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"customerGateway": @"ec2:customerGateway"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)customerGatewayXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2CustomerGateway class]];
}

@end
