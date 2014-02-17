//
//  UAIAMListInstanceProfilesForRoleResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMListInstanceProfilesForRoleResponse.h"
#import "UAIAMInstanceProfile.h"

@implementation UAIAMListInstanceProfilesForRoleResponse

@synthesize instanceProfiles=_instanceProfiles, isTruncated=_isTruncated, marker=_marker;

+ (NSString *)XPathPrefix
{
    return @"./ListInstanceProfilesForRoleResponse/ListInstanceProfilesForRoleResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"instanceProfiles": @"InstanceProfiles/member",
        @"isTruncated": @"IsTruncated",
        @"marker": @"Marker"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)instanceProfilesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAIAMInstanceProfile class]];
}

+ (NSValueTransformer *)isTruncatedXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
