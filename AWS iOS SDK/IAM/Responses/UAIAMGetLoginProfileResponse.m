//
//  UAIAMGetLoginProfileResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetLoginProfileResponse.h"
#import "UAIAMLoginProfile.h"

@implementation UAIAMGetLoginProfileResponse

@synthesize loginProfile=_loginProfile;

+ (NSString *)XPathPrefix
{
    return @"./iam:GetLoginProfileResponse/iam:GetLoginProfileResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"loginProfile": @"iam:LoginProfile"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)loginProfileXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAIAMLoginProfile class]];
}

@end
