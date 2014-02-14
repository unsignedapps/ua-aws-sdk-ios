//
//  UAASPutScalingPolicyResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASPutScalingPolicyResponse.h"

@implementation UAASPutScalingPolicyResponse

@synthesize policyARN=_policyARN;

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:PutScalingPolicyResponse/AutoScaling:PutScalingPolicyResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"policyARN": @"AutoScaling:PolicyARN"
    }];
    return [keyPaths copy];
}

@end
