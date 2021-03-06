//
//  UAEC2S3Storage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2S3Storage.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2S3Storage

@synthesize bucket=_bucket, prefix=_prefix, aWSAccessKeyID=_aWSAccessKeyID, uploadPolicy=_uploadPolicy, uploadPolicySignature=_uploadPolicySignature;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"bucket": @"Bucket",
        @"prefix": @"Prefix",
        @"aWSAccessKeyID": @"AWSAccessKeyId",
        @"uploadPolicy": @"UploadPolicy",
        @"uploadPolicySignature": @"UploadPolicySignature"
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
        @"bucket": @"ec2:Bucket",
        @"prefix": @"ec2:Prefix",
        @"aWSAccessKeyID": @"ec2:AWSAccessKeyId",
        @"uploadPolicy": @"ec2:UploadPolicy",
        @"uploadPolicySignature": @"ec2:UploadPolicySignature"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop