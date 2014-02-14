//
//  UAASDescribeTerminationPolicyTypesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeTerminationPolicyTypesResponse.h"

@implementation UAASDescribeTerminationPolicyTypesResponse

@synthesize terminationPolicyTypes=_terminationPolicyTypes;

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DescribeTerminationPolicyTypesResponse/AutoScaling:DescribeTerminationPolicyTypesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"terminationPolicyTypes": @"AutoScaling:TerminationPolicyTypes/AutoScaling:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)terminationPolicyTypesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end
