//
//  UAIAMCreateLoginProfileResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMCreateLoginProfileResponse.h"
#import "UAIAMLoginProfile.h"

@implementation UAIAMCreateLoginProfileResponse

@synthesize loginProfile=_loginProfile;

+ (NSString *)XPathPrefix
{
    return @"./CreateLoginProfileResponse/CreateLoginProfileResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"loginProfile": @"LoginProfile"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)loginProfileXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAIAMLoginProfile class]];
}

@end