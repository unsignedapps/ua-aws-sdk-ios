//
//  UAEC2ReservedInstanceLimitPrice.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

- (void)setAmount:(NSNumber *)amount
{
	_amount = amount;
	
	if (![self.UA_dirtyProperties containsObject:@"amount"])
		[self.UA_dirtyProperties addObject:@"amount"];
}

- (void)setCurrencyCode:(NSString *)currencyCode
{
	_currencyCode = currencyCode;
	
	if (![self.UA_dirtyProperties containsObject:@"currencyCode"])
		[self.UA_dirtyProperties addObject:@"currencyCode"];
}

+ (NSValueTransformer *)amountXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
