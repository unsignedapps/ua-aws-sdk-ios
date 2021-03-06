//
//  UASNSGetTopicAttributesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSGetTopicAttributesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASNSTopicAttributes.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASNSGetTopicAttributesResponse

@synthesize attributes=_attributes;

+ (NSString *)XPathPrefix
{
    return @"./Sns:GetTopicAttributesResponse/Sns:GetTopicAttributesResult/";
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
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UASNSTopicAttributes class]];
}

@end

#pragma clang diagnostic pop