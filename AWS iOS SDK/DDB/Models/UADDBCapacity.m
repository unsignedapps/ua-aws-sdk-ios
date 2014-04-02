//
//  UADDBCapacity.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBCapacity.h"

@implementation UADDBCapacity

@synthesize capacityUnits=_capacityUnits;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"capacityUnits": @"CapacityUnits"
    }];
    return [keyPaths copy];
}

@end
