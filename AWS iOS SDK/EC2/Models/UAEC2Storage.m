//
//  UAEC2Storage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Storage.h"
#import "UAEC2S3Storage.h"

@implementation UAEC2Storage

@synthesize s3=_s3;

- (id)initWithS3:(UAEC2S3Storage *)s3
{
	if (self = [self init])
	{
		[self setS3:s3];
	}
	return self;
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"s3": @"S3"
    }];
    return [keyPaths copy];
}

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
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2S3Storage class]];
}

+ (NSValueTransformer *)s3XMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2S3Storage class]];
}

@end
