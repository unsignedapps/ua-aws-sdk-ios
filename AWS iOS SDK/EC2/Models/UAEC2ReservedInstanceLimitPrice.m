//
//  UAEC2ReservedInstanceLimitPrice.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ReservedInstanceLimitPrice.h"

@implementation UAEC2ReservedInstanceLimitPrice

@synthesize amount=_amount, currencyCode=_currencyCode;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"amount": @"Amount",
        @"currencyCode": @"CurrencyCode"
    }];
    return [keyPaths copy];
}

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
        @"amount": @"ec2:Amount",
        @"currencyCode": @"ec2:CurrencyCode"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)amountXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
