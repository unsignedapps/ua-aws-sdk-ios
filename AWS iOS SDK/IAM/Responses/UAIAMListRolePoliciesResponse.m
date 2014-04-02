//
//  UAIAMListRolePoliciesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMListRolePoliciesResponse.h"

@implementation UAIAMListRolePoliciesResponse

@synthesize policyNames=_policyNames, isTruncated=_isTruncated, marker=_marker;

+ (NSString *)XPathPrefix
{
    return @"./iam:ListRolePoliciesResponse/iam:ListRolePoliciesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"policyNames": @"iam:PolicyNames/iam:member",
        @"isTruncated": @"iam:IsTruncated",
        @"marker": @"iam:Marker"
    }];
    return [keyPaths copy];
}

- (NSString *)policyNameAtIndex:(NSUInteger)index
{
    if (self.policyNames == nil || index >= ([self.policyNames count]-1))
        return nil;

    return [self.policyNames objectAtIndex:index];
}

+ (NSValueTransformer *)policyNamesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)isTruncatedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
