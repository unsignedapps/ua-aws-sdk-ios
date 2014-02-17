//
//  UAIAMGetGroupResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetGroupResponse.h"
#import "UAIAMGroup.h"
#import "UAIAMUser.h"

@implementation UAIAMGetGroupResponse

@synthesize group=_group, users=_users, isTruncated=_isTruncated, marker=_marker;

+ (NSString *)XPathPrefix
{
    return @"./GetGroupResponse/GetGroupResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"group": @"Group",
        @"users": @"Users/member",
        @"isTruncated": @"IsTruncated",
        @"marker": @"Marker"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)groupXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAIAMGroup class]];
}

+ (NSValueTransformer *)usersXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAIAMUser class]];
}

+ (NSValueTransformer *)isTruncatedXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
