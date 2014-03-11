//
//  UASNSEndpointAttributes.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSEndpointAttributes.h"

@implementation UASNSEndpointAttributes

@synthesize customUserData=_customUserData, enabled=_enabled, token=_token;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"customUserData": @"Sns:entry/Sns:value[../Sns:key/text() = \"CustomUserData\"]",
        @"enabled": @"Sns:entry/Sns:value[../Sns:key/text() = \"Enabled\"]",
        @"token": @"Sns:entry/Sns:value[../Sns:key/text() = \"Token\"]"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)enabledXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
