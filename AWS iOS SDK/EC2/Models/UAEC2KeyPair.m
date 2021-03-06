//
//  UAEC2KeyPair.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2KeyPair.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2KeyPair

@synthesize keyName=_keyName, keyFingerprint=_keyFingerprint;

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
        @"keyName": @"ec2:keyName",
        @"keyFingerprint": @"ec2:keyFingerprint"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop