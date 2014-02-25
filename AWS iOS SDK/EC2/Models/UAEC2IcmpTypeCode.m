//
//  UAEC2IcmpTypeCode.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2IcmpTypeCode.h"

@implementation UAEC2IcmpTypeCode

@synthesize type=_type, code=_code;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"type": @"Type",
        @"code": @"Code"
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
        @"type": @"ec2:type",
        @"code": @"ec2:code"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)typeXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)codeXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
