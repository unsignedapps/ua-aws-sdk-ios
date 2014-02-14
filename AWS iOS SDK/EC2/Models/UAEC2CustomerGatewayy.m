//
//  UAEC2CustomerGatewayy.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CustomerGatewayy.h"
#import "UAEC2Tag.h"

@implementation UAEC2CustomerGatewayy

@synthesize customerGatewayID=_customerGatewayID, state=_state, type=_type, ipAddress=_ipAddress, bgpASN=_bgpASN, tags=_tags;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"customerGatewayID": @"ec2:customerGatewayId",
        @"state": @"ec2:state",
        @"type": @"ec2:type",
        @"ipAddress": @"ec2:ipAddress",
        @"bgpASN": @"ec2:bgpAsn",
        @"tags": @"ec2:tagSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

@end
