//
//  UAIAMCreateOpenIDConnectProviderResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMCreateOpenIDConnectProviderResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMCreateOpenIDConnectProviderResponse

@synthesize openIDConnectProviderARN=_openIDConnectProviderARN;

+ (NSString *)XPathPrefix
{
    return @"./iam:CreateOpenIDConnectProviderResponse/iam:CreateOpenIDConnectProviderResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"openIDConnectProviderARN": @"iam:OpenIDConnectProviderArn"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop