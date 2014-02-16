//
//  UAEC2CreateInternetGatewayResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateInternetGatewayResponse.h"
#import "UAEC2InternetGateway.h"

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
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2InternetGateway class]];
}

@end
