//
//  UAIAMGetUserResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetUserResponse.h"
#import "UAIAMUser.h"

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
