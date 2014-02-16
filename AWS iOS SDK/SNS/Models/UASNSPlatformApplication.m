//
//  UASNSPlatformApplication.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSPlatformApplication.h"
#import "UASNSPlatformApplicationAttributes.h"

@implementation UASNSPlatformApplication

@synthesize platformApplicationARN=_platformApplicationARN, attributes=_attributes;

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
        @"platformApplicationARN": @"Sns:PlatformApplicationArn",
        @"attributes": @"Sns:Attributes"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)attributesQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UASNSPlatformApplicationAttributes class]];
}

+ (NSValueTransformer *)attributesXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UASNSPlatformApplicationAttributes class]];
}

@end
