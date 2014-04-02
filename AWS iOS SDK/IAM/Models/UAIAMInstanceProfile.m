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
        @"path": @"iam:Path",
        @"instanceProfileName": @"iam:InstanceProfileName",
        @"instanceProfileID": @"iam:InstanceProfileId",
        @"arn": @"iam:Arn",
        @"createDate": @"iam:CreateDate",
        @"roles": @"iam:Roles/iam:member"
    }];
    return [keyPaths copy];
}

- (UAIAMRole *)roleAtIndex:(NSUInteger)index
{
    if (self.roles == nil || index >= ([self.roles count]-1))
        return nil;

    return [self.roles objectAtIndex:index];
}

+ (NSValueTransformer *)createDateQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)rolesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAIAMRole class]];
}

+ (NSValueTransformer *)createDateXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)rolesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAIAMRole class]];
}

@end
