//
//  UAIAMGetUserResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetUserResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMUser.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMGetUserResponse

@synthesize user=_user;

+ (NSString *)XPathPrefix
{
    return @"./iam:GetUserResponse/iam:GetUserResult/";
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