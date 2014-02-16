//
//  UASNSGetSubscriptionAttributesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSGetSubscriptionAttributesResponse.h"
#import "UASNSSubscriptionAttributes.h"

@implementation UASNSGetSubscriptionAttributesResponse

@synthesize attributes=_attributes;

+ (NSString *)XPathPrefix
{
    return @"./Sns:GetSubscriptionAttributesResponse/Sns:GetSubscriptionAttributesResult/";
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
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UASNSSubscriptionAttributes class]];
}

@end
