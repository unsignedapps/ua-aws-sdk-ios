//
//  UAEC2BundleInstanceStorage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2BundleInstanceStorage.h"
#import "UAEC2BundleInstanceS3Storage.h"

@implementation UAEC2BundleInstanceStorage

@synthesize s3=_s3;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"s3": @"ec2:S3"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)s3QueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2BundleInstanceS3Storage class]];
}

+ (NSValueTransformer *)s3XMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2BundleInstanceS3Storage class]];
}

@end
