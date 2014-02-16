//
//  UASNSGetEndpointAttributesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSGetEndpointAttributesResponse.h"
#import "UASNSEndpointAttributes.h"

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
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UASNSEndpointAttributes class]];
}

@end
