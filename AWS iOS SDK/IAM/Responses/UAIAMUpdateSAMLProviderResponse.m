//
//  UAIAMUpdateSAMLProviderResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMUpdateSAMLProviderResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMUpdateSAMLProviderResponse

@synthesize sAMLProviderARN=_sAMLProviderARN;

+ (NSString *)XPathPrefix
{
    return @"./iam:UpdateSAMLProviderResponse/iam:UpdateSAMLProviderResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"sAMLProviderARN": @"iam:SAMLProviderArn"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop