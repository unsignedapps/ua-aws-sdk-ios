//
//  UARDSDefaultCharacterSet.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDefaultCharacterSet.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDefaultCharacterSet

@synthesize characterSetName=_characterSetName, characterSetDescription=_characterSetDescription;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"characterSetName": @"Rds:CharacterSetName",
        @"characterSetDescription": @"Rds:CharacterSetDescription"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop