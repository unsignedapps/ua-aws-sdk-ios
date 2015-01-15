//
//  UAASPutScalingPolicyResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASPutScalingPolicyResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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

#pragma clang diagnostic pop