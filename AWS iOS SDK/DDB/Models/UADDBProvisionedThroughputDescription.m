//
//  UADDBProvisionedThroughputDescription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBProvisionedThroughputDescription.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBProvisionedThroughputDescription

@synthesize lastIncreaseDateTime=_lastIncreaseDateTime, lastDecreaseDateTime=_lastDecreaseDateTime, numberOfDecreasesToday=_numberOfDecreasesToday, readCapacityUnits=_readCapacityUnits, writeCapacityUnits=_writeCapacityUnits;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"lastIncreaseDateTime": @"LastIncreaseDateTime",
        @"lastDecreaseDateTime": @"LastDecreaseDateTime",
        @"numberOfDecreasesToday": @"NumberOfDecreasesToday",
        @"readCapacityUnits": @"ReadCapacityUnits",
        @"writeCapacityUnits": @"WriteCapacityUnits"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)lastIncreaseDateTimeJSONTransformer
{
    return [NSValueTransformer UA_JSONTransformerForUnixTimestamp];
}

+ (NSValueTransformer *)lastDecreaseDateTimeJSONTransformer
{
    return [NSValueTransformer UA_JSONTransformerForUnixTimestamp];
}

@end

#pragma clang diagnostic pop