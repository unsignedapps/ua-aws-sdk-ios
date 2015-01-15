//
//  UASNSGetEndpointAttributesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSGetEndpointAttributesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASNSEndpointAttributes.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASNSGetEndpointAttributesResponse

@synthesize attributes=_attributes;

+ (NSString *)XPathPrefix
{
    return @"./Sns:GetEndpointAttributesResponse/Sns:GetEndpointAttributesResult/";
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
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UASNSEndpointAttributes class]];
}

@end

#pragma clang diagnostic pop