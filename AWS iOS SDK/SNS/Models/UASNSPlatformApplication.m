//
//  UASNSPlatformApplication.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSPlatformApplication.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASNSPlatformApplicationAttributes.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UASNSPlatformApplicationAttributes class]];
}

+ (NSValueTransformer *)attributesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UASNSPlatformApplicationAttributes class]];
}

@end

#pragma clang diagnostic pop