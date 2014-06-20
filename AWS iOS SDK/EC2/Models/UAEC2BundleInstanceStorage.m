//
//  UAEC2BundleInstanceStorage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2BundleInstanceStorage.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2BundleInstanceS3Storage.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2BundleInstanceS3Storage class]];
}

+ (NSValueTransformer *)s3XMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2BundleInstanceS3Storage class]];
}

@end

#pragma clang diagnostic pop