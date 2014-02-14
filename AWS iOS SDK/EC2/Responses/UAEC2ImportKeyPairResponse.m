//
//  UAEC2ImportKeyPairResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ImportKeyPairResponse.h"

@implementation UAEC2ImportKeyPairResponse

@synthesize keyName=_keyName, keyFingerprint=_keyFingerprint;

+ (NSString *)XPathPrefix
{
    return @"./ec2:ImportKeyPairResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"keyName": @"ec2:keyName",
        @"keyFingerprint": @"ec2:keyFingerprint"
    }];
    return [keyPaths copy];
}

@end
