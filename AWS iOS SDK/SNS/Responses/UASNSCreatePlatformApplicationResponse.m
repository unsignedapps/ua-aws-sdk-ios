//
//  UASNSCreatePlatformApplicationResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSCreatePlatformApplicationResponse.h"

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
