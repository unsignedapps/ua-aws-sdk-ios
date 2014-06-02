//
//  UADDBProvisionedThroughput.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBProvisionedThroughput.h"

@implementation UADDBProvisionedThroughput

@synthesize readCapacityUnits=_readCapacityUnits, writeCapacityUnits=_writeCapacityUnits;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"readCapacityUnits": @"ReadCapacityUnits",
        @"writeCapacityUnits": @"WriteCapacityUnits"
    }];
    return [keyPaths copy];
}

@end
