//
//  UAEC2CreateCustomerGatewayResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateCustomerGatewayResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2CustomerGateway.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2CustomerGateway class]];
}

@end

#pragma clang diagnostic pop