//
//  UAEC2PrivateIPAddressSpecification.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2PrivateIPAddressSpecification.h"

@implementation UAEC2PrivateIPAddressSpecification

@synthesize privateIPAddress=_privateIPAddress, primary=_primary;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"privateIPAddress": @"privateIpAddress",
        @"primary": @"primary"
    }];
    return [keyPaths copy];
}

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
        @"privateIPAddress": @"ec2:privateIpAddress",
        @"primary": @"ec2:primary"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)primaryXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
