//
//  UAEC2PriceScheduleSpecification.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2PriceScheduleSpecification.h"

@implementation UAEC2PriceScheduleSpecification

@synthesize term=_term, price=_price, currencyCode=_currencyCode;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"term": @"Term",
        @"price": @"Price",
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
        @"term": @"ec2:Term",
        @"price": @"ec2:Price",
        @"currencyCode": @"ec2:CurrencyCode"
    }];
    return [keyPaths copy];
}

- (void)setTerm:(NSNumber *)term
{
	_term = term;
	
	if (![self.UA_dirtyProperties containsObject:@"term"])
		[self.UA_dirtyProperties addObject:@"term"];
}

- (void)setPrice:(NSNumber *)price
{
	_price = price;
	
	if (![self.UA_dirtyProperties containsObject:@"price"])
		[self.UA_dirtyProperties addObject:@"price"];
}

- (void)setCurrencyCode:(NSString *)currencyCode
{
	_currencyCode = currencyCode;
	
	if (![self.UA_dirtyProperties containsObject:@"currencyCode"])
		[self.UA_dirtyProperties addObject:@"currencyCode"];
}

+ (NSValueTransformer *)termXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)priceXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
