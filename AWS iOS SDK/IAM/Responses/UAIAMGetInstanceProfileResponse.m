//
//  UAIAMGetInstanceProfileResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetInstanceProfileResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMInstanceProfile.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMGetInstanceProfileResponse

@synthesize instanceProfile=_instanceProfile;

+ (NSString *)XPathPrefix
{
    return @"./iam:GetInstanceProfileResponse/iam:GetInstanceProfileResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"instanceProfile": @"iam:InstanceProfile"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)instanceProfileXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAIAMInstanceProfile class]];
}

@end

#pragma clang diagnostic pop