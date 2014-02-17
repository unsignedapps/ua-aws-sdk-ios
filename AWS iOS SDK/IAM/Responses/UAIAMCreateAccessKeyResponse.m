//
//  UAIAMCreateAccessKeyResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMCreateAccessKeyResponse.h"
#import "UAIAMAccessKey.h"

@implementation UAIAMCreateAccessKeyResponse

@synthesize accessKey=_accessKey;

+ (NSString *)XPathPrefix
{
    return @"./CreateAccessKeyResponse/CreateAccessKeyResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"accessKey": @"AccessKey"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)accessKeyXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAIAMAccessKey class]];
}

@end
