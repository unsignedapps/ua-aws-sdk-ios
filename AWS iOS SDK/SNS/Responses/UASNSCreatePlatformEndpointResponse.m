//
//  UASNSCreatePlatformEndpointResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSCreatePlatformEndpointResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASNSCreatePlatformEndpointResponse

@synthesize endpointARN=_endpointARN;

+ (NSString *)XPathPrefix
{
    return @"./Sns:CreatePlatformEndpointResponse/Sns:CreatePlatformEndpointResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"endpointARN": @"Sns:EndpointArn"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop