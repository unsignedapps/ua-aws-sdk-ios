//
//  UASNSCreatePlatformApplicationResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSCreatePlatformApplicationResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASNSCreatePlatformApplicationResponse

@synthesize platformApplicationARN=_platformApplicationARN;

+ (NSString *)XPathPrefix
{
    return @"./Sns:CreatePlatformApplicationResponse/Sns:CreatePlatformApplicationResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"platformApplicationARN": @"Sns:PlatformApplicationArn"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop