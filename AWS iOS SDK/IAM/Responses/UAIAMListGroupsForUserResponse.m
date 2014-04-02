//
//  UAIAMListGroupsForUserResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMListGroupsForUserResponse.h"
#import "UAIAMGroup.h"

@implementation UAIAMListGroupsForUserResponse

@synthesize groups=_groups, isTruncated=_isTruncated, marker=_marker;

+ (NSString *)XPathPrefix
{
    return @"./iam:ListGroupsForUserResponse/iam:ListGroupsForUserResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"groups": @"iam:Groups/iam:member",
        @"isTruncated": @"iam:IsTruncated",
        @"marker": @"iam:Marker"
    }];
    return [keyPaths copy];
}

- (UAIAMGroup *)groupAtIndex:(NSUInteger)index
{
    if (self.groups == nil || index >= ([self.groups count]-1))
        return nil;

    return [self.groups objectAtIndex:index];
}

+ (NSValueTransformer *)groupsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAIAMGroup class]];
}

+ (NSValueTransformer *)isTruncatedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
