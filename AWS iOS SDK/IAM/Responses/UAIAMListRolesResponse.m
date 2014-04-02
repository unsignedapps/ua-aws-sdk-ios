//
//  UAIAMListRolesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMListRolesResponse.h"
#import "UAIAMRole.h"

@implementation UAIAMListRolesResponse

@synthesize roles=_roles, isTruncated=_isTruncated, marker=_marker;

+ (NSString *)XPathPrefix
{
    return @"./iam:ListRolesResponse/iam:ListRolesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"roles": @"iam:Roles/iam:member",
        @"isTruncated": @"iam:IsTruncated",
        @"marker": @"iam:Marker"
    }];
    return [keyPaths copy];
}

- (UAIAMRole *)roleAtIndex:(NSUInteger)index
{
    if (self.roles == nil || index >= ([self.roles count]-1))
        return nil;

    return [self.roles objectAtIndex:index];
}

+ (NSValueTransformer *)rolesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAIAMRole class]];
}

+ (NSValueTransformer *)isTruncatedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
