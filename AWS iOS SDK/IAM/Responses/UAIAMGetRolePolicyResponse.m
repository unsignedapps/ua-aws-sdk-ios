//
//  UAIAMGetRolePolicyResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetRolePolicyResponse.h"

@implementation UAIAMGetRolePolicyResponse

@synthesize roleName=_roleName, policyName=_policyName, policyDocument=_policyDocument;

+ (NSString *)XPathPrefix
{
    return @"./GetRolePolicyResponse/GetRolePolicyResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"roleName": @"RoleName",
        @"policyName": @"PolicyName",
        @"policyDocument": @"PolicyDocument"
    }];
    return [keyPaths copy];
}

@end
