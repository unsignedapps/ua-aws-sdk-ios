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
    return @"./GetUserResponse/GetUserResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"user": @"User"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)userXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAIAMUser class]];
}

@end
