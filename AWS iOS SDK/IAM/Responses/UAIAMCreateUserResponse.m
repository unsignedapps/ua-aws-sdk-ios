//
//  UAIAMCreateUserResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMCreateUserResponse.h"
#import "UAIAMUser.h"

@implementation UAIAMCreateUserResponse

@synthesize user=_user;

+ (NSString *)XPathPrefix
{
    return @"./iam:CreateUserResponse/iam:CreateUserResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"user": @"iam:User"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)userXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAIAMUser class]];
}

@end
