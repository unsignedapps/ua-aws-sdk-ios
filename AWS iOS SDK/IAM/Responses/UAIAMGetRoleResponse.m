//
//  UAIAMGetRoleResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetRoleResponse.h"
#import "UAIAMRole.h"

@implementation UAIAMGetRoleResponse

@synthesize role=_role;

+ (NSString *)XPathPrefix
{
    return @"./iam:GetRoleResponse/iam:GetRoleResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"role": @"iam:Role"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)roleXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAIAMRole class]];
}

@end
