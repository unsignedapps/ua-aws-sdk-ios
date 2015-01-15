//
//  UAKMSKey.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSKey.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSKey

@synthesize keyID=_keyID, keyARN=_keyARN;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"keyID": @"KeyId",
        @"keyARN": @"KeyArn"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop