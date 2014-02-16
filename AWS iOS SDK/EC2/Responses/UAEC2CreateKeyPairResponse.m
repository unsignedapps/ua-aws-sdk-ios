//
//  UAEC2CreateKeyPairResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateKeyPairResponse.h"

@implementation UAEC2CreateKeyPairResponse

@synthesize keyName=_keyName, keyFingerprint=_keyFingerprint, keyMaterial=_keyMaterial;

+ (NSString *)XPathPrefix
{
    return @"./ec2:CreateKeyPairResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"keyName": @"ec2:keyName",
        @"keyFingerprint": @"ec2:keyFingerprint",
        @"keyMaterial": @"ec2:keyMaterial"
    }];
    return [keyPaths copy];
}

@end
