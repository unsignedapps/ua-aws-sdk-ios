//
//  UAIAMCreateSAMLProviderResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMCreateSAMLProviderResponse.h"

@implementation UAIAMCreateSAMLProviderResponse

@synthesize sAMLProviderARN=_sAMLProviderARN;

+ (NSString *)XPathPrefix
{
    return @"./CreateSAMLProviderResponse/CreateSAMLProviderResult/";
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
