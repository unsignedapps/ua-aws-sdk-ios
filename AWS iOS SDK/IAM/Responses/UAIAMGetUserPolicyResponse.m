//
//  UAIAMGetUserPolicyResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetUserPolicyResponse.h"

@implementation UAIAMGetUserPolicyResponse

@synthesize userName=_userName, policyName=_policyName, policyDocument=_policyDocument;

+ (NSString *)XPathPrefix
{
    return @"./GetUserPolicyResponse/GetUserPolicyResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"userName": @"UserName",
        @"policyName": @"PolicyName",
        @"policyDocument": @"PolicyDocument"
    }];
    return [keyPaths copy];
}

@end
