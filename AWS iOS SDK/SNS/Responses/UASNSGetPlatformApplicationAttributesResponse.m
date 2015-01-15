//
//  UASNSGetPlatformApplicationAttributesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSGetPlatformApplicationAttributesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASNSPlatformApplicationAttributes.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASNSGetPlatformApplicationAttributesResponse

@synthesize attributes=_attributes;

+ (NSString *)XPathPrefix
{
    return @"./Sns:GetPlatformApplicationAttributesResponse/Sns:GetPlatformApplicationAttributesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"attributes": @"Sns:Attributes"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)attributesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UASNSPlatformApplicationAttributes class]];
}

@end

#pragma clang diagnostic pop