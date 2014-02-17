//
//  UAIAMUpdateSAMLProviderResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMUpdateSAMLProviderResponse.h"

@implementation UAIAMUpdateSAMLProviderResponse

@synthesize sAMLProviderARN=_sAMLProviderARN;

+ (NSString *)XPathPrefix
{
    return @"./UpdateSAMLProviderResponse/UpdateSAMLProviderResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"sAMLProviderARN": @"SAMLProviderArn"
    }];
    return [keyPaths copy];
}

@end