//
//  UASNSEndpoint.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSEndpoint.h"
#import "UASNSEndpointAttributes.h"

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
	return [NSValueTransformer mtl_QueryStringDictionaryTransformerWithModelClass:[UASNSEndpointAttributes class]];
}

+ (NSValueTransformer *)attributesXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UASNSEndpointAttributes class]];
}

@end
