//
//  UAIAMGetRolePolicyResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetRolePolicyResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMGetRolePolicyResponse

@synthesize roleName=_roleName, policyName=_policyName, policyDocument=_policyDocument;

+ (NSString *)XPathPrefix
{
    return @"./iam:GetRolePolicyResponse/iam:GetRolePolicyResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"roleName": @"iam:RoleName",
        @"policyName": @"iam:PolicyName",
        @"policyDocument": @"iam:PolicyDocument"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop