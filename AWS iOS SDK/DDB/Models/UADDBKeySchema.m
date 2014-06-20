//
//  UADDBKeySchema.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBKeySchema.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBKeySchema

@synthesize attributeName=_attributeName, keyType=_keyType;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"attributeName": @"AttributeName",
        @"keyType": @"KeyType"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)keyTypeJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UADDBKeyTypeHash), @(UADDBKeyTypeRange) ]
                                               stringValues:@[ @"HASH", @"RANGE" ]
                                               unknownValue:@(UADDBKeyTypeUnknown)];
}

@end

#pragma clang diagnostic pop