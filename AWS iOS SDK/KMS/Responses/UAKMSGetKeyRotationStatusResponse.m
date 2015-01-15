//
//  UAKMSGetKeyRotationStatusResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSGetKeyRotationStatusResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSGetKeyRotationStatusResponse

@synthesize keyRotationEnabled=_keyRotationEnabled;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSResponse JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"keyRotationEnabled": @"KeyRotationEnabled"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop