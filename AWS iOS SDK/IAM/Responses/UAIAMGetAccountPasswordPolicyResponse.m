//
//  UAIAMGetAccountPasswordPolicyResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetAccountPasswordPolicyResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMPasswordPolicy.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMGetAccountPasswordPolicyResponse

@synthesize passwordPolicy=_passwordPolicy;

+ (NSString *)XPathPrefix
{
    return @"./iam:GetAccountPasswordPolicyResponse/iam:GetAccountPasswordPolicyResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"passwordPolicy": @"iam:PasswordPolicy"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)passwordPolicyXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAIAMPasswordPolicy class]];
}

@end

#pragma clang diagnostic pop