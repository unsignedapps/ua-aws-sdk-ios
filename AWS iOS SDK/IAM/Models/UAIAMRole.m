//
//  UAIAMRole.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMRole.h"

@implementation UAIAMRole

@synthesize path=_path, roleName=_roleName, roleID=_roleID, arn=_arn, createDate=_createDate, assumeRolePolicyDocument=_assumeRolePolicyDocument;

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
        @"roleName": @"RoleName",
        @"roleID": @"RoleId",
        @"arn": @"Arn",
        @"createDate": @"CreateDate",
        @"assumeRolePolicyDocument": @"AssumeRolePolicyDocument"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)createDateQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)createDateXMLTransformer
{
    return [NSValueTransformer mtl_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

@end
