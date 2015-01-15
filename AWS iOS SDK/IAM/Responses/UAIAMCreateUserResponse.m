//
//  UAIAMCreateUserResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMCreateUserResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMUser.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAIAMUser class]];
}

@end

#pragma clang diagnostic pop