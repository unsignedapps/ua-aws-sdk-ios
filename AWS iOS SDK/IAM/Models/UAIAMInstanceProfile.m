//
//  UAIAMInstanceProfile.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMInstanceProfile.h"
#import "UAIAMRole.h"

@implementation UAIAMInstanceProfile

@synthesize path=_path, instanceProfileName=_instanceProfileName, instanceProfileID=_instanceProfileID, arn=_arn, createDate=_createDate, roles=_roles;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"path": @"Path",
        @"instanceProfileName": @"InstanceProfileName",
        @"instanceProfileID": @"InstanceProfileId",
        @"arn": @"Arn",
        @"createDate": @"CreateDate",
        @"roles": @"Roles/member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)createDateQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)rolesQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAIAMRole class]];
}

+ (NSValueTransformer *)createDateXMLTransformer
{
    return [NSValueTransformer mtl_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)rolesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAIAMRole class]];
}

@end
