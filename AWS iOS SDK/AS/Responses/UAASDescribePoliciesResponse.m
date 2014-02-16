//
//  UAASDescribePoliciesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribePoliciesResponse.h"
#import "UAASScalingPolicy.h"

@implementation UAASDescribePoliciesResponse

@synthesize scalingPolicies=_scalingPolicies, nextToken=_nextToken;

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DescribePoliciesResponse/AutoScaling:DescribePoliciesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"scalingPolicies": @"AutoScaling:ScalingPolicies/AutoScaling:member",
        @"nextToken": @"AutoScaling:NextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)scalingPoliciesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAASScalingPolicy class]];
}

@end
