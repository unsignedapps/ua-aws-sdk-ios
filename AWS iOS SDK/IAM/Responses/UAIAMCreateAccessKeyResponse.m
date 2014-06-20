//
//  UAIAMCreateAccessKeyResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMCreateAccessKeyResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMAccessKey.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMCreateAccessKeyResponse

@synthesize accessKey=_accessKey;

+ (NSString *)XPathPrefix
{
    return @"./iam:CreateAccessKeyResponse/iam:CreateAccessKeyResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"accessKey": @"iam:AccessKey"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)accessKeyXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAIAMAccessKey class]];
}

@end

#pragma clang diagnostic pop