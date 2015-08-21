//
//  UARDSRecurringCharge.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSRecurringCharge.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSRecurringCharge

@synthesize recurringChargeAmount=_recurringChargeAmount, recurringChargeFrequency=_recurringChargeFrequency;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"recurringChargeAmount": @"Rds:RecurringChargeAmount",
        @"recurringChargeFrequency": @"Rds:RecurringChargeFrequency"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)recurringChargeAmountXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end

#pragma clang diagnostic pop