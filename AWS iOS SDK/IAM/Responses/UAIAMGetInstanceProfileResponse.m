//
//  UAIAMGetInstanceProfileResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetInstanceProfileResponse.h"
#import "UAIAMInstanceProfile.h"

@implementation UAIAMGetInstanceProfileResponse

@synthesize instanceProfile=_instanceProfile;

+ (NSString *)XPathPrefix
{
    return @"./GetInstanceProfileResponse/GetInstanceProfileResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"instanceProfile": @"InstanceProfile"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)instanceProfileXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAIAMInstanceProfile class]];
}

@end
