//
//  UAEC2RecurringCharge.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2RecurringCharge.h"

@implementation UAEC2RecurringCharge

@synthesize frequency=_frequency, amount=_amount;

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
        @"frequency": @"ec2:frequency",
        @"amount": @"ec2:amount"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)amountXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
