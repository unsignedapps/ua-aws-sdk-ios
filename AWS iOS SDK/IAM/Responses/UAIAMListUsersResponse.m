//
//  UAIAMListUsersResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMListUsersResponse.h"
#import "UAIAMUser.h"

@implementation UAIAMListUsersResponse

@synthesize users=_users, isTruncated=_isTruncated, marker=_marker;

+ (NSString *)XPathPrefix
{
    return @"./iam:ListUsersResponse/iam:ListUsersResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"users": @"iam:Users/iam:member",
        @"isTruncated": @"iam:IsTruncated",
        @"marker": @"iam:Marker"
    }];
    return [keyPaths copy];
}

- (UAIAMUser *)userAtIndex:(NSUInteger)index
{
    if (self.users == nil || index >= ([self.users count]-1))
        return nil;

    return [self.users objectAtIndex:index];
}

+ (NSValueTransformer *)usersXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAIAMUser class]];
}

+ (NSValueTransformer *)isTruncatedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
