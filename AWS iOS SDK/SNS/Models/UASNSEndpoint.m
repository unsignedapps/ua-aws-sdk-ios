//
//  UASNSEndpoint.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSEndpoint.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASNSEndpointAttributes.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASNSEndpoint

@synthesize endpointARN=_endpointARN, attributes=_attributes;

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
        @"endpointARN": @"Sns:EndpointArn",
        @"attributes": @"Sns:Attributes"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)attributesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UASNSEndpointAttributes class]];
}

+ (NSValueTransformer *)attributesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UASNSEndpointAttributes class]];
}

@end

#pragma clang diagnostic pop