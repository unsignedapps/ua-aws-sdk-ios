//
//  UAEC2PrivateIPAddressSpecifiction.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2PrivateIPAddressSpecifiction.h"

@implementation UAEC2PrivateIPAddressSpecifiction

@synthesize privateIPAddress=_privateIPAddress, primary=_primary;

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
