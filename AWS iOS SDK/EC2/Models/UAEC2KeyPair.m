//
//  UAEC2KeyPair.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2KeyPair.h"

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
