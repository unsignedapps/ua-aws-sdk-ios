//
//  UAEC2CreateInternetGatewayResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateInternetGatewayResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2InternetGateway.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2CreateInternetGatewayResponse

@synthesize internetGateway=_internetGateway;

+ (NSString *)XPathPrefix
{
    return @"./ec2:CreateInternetGatewayResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"internetGateway": @"ec2:internetGateway"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)internetGatewayXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2InternetGateway class]];
}

@end

#pragma clang diagnostic pop