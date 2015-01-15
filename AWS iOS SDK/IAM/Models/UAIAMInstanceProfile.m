//
//  UAIAMInstanceProfile.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMInstanceProfile.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMRole.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMInstanceProfile

@synthesize path=_path, instanceProfileName=_instanceProfileName, instanceProfileID=_instanceProfileID, arn=_arn, createDate=_createDate, roles=_roles;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(roleAtIndex:) propertyName:@"roles"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addRole:) propertyName:@"roles"];
	}
	return self;
}

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

#pragma clang diagnostic pop