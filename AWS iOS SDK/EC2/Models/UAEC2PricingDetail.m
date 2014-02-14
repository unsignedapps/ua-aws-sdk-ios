//
//  UAEC2PricingDetail.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2PricingDetail.h"

@implementation UAEC2PricingDetail

@synthesize price=_price, count=_count;

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
        @"price": @"ec2:price",
        @"count": @"ec2:count"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)priceXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)countXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
