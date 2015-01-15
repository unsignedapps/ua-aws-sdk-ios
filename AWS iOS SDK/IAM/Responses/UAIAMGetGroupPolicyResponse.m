//
//  UAIAMGetGroupPolicyResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetGroupPolicyResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMGetGroupPolicyResponse

@synthesize groupName=_groupName, policyName=_policyName, policyDocument=_policyDocument;

+ (NSString *)XPathPrefix
{
    return @"./iam:GetGroupPolicyResponse/iam:GetGroupPolicyResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"groupName": @"iam:GroupName",
        @"policyName": @"iam:PolicyName",
        @"policyDocument": @"iam:PolicyDocument"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop