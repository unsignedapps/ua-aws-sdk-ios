//
//  UAEC2SpotPriceHistory.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2SpotPriceHistory.h"

@implementation UAEC2SpotPriceHistory

@synthesize instanceType=_instanceType, productDescription=_productDescription, spotPrice=_spotPrice, timestamp=_timestamp, availabilityZone=_availabilityZone;

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
        @"instanceType": @"ec2:instanceType",
        @"productDescription": @"ec2:productDescription",
        @"spotPrice": @"ec2:spotPrice",
        @"timestamp": @"ec2:timestamp",
        @"availabilityZone": @"ec2:availabilityZone"
    }];
    return [keyPaths copy];
}

@end
