//
//  UAEC2PriceSchedule.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2PriceSchedule.h"

@implementation UAEC2PriceSchedule

@synthesize term=_term, price=_price, currencyCode=_currencyCode, active=_active;

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
        @"term": @"ec2:term",
        @"price": @"ec2:price",
        @"currencyCode": @"ec2:currencyCode",
        @"active": @"ec2:active"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)termXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)priceXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)activeXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
