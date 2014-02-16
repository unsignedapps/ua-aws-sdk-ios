//
//  UAEC2AutoEnableIO.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AutoEnableIO.h"

@implementation UAEC2AutoEnableIO

@synthesize value=_value;

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
        @"value": @"ec2:value"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)valueXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
