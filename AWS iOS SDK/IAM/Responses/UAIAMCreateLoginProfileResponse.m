//
//  UAIAMCreateLoginProfileResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMCreateLoginProfileResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMLoginProfile.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMCreateLoginProfileResponse

@synthesize loginProfile=_loginProfile;

+ (NSString *)XPathPrefix
{
    return @"./iam:CreateLoginProfileResponse/iam:CreateLoginProfileResult/";
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

#pragma clang diagnostic pop