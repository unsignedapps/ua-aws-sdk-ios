//
//  UAIAMGetGroupPolicyResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetGroupPolicyResponse.h"

@implementation UAIAMGetGroupPolicyResponse

@synthesize groupName=_groupName, policyName=_policyName, policyDocument=_policyDocument;

+ (NSString *)XPathPrefix
{
    return @"./GetGroupPolicyResponse/GetGroupPolicyResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"groupName": @"GroupName",
        @"policyName": @"PolicyName",
        @"policyDocument": @"PolicyDocument"
    }];
    return [keyPaths copy];
}

@end
