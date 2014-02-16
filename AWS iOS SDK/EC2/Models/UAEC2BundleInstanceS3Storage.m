//
//  UAEC2BundleInstanceS3Storage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2BundleInstanceS3Storage.h"

@implementation UAEC2BundleInstanceS3Storage

@synthesize bucket=_bucket, prefix=_prefix, aWSAccessKeyID=_aWSAccessKeyID, uploadPolicy=_uploadPolicy, uploadPolicySignature=_uploadPolicySignature;

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
        @"bucket": @"ec2:bucket",
        @"prefix": @"ec2:prefix",
        @"aWSAccessKeyID": @"ec2:awsAccessKeyId",
        @"uploadPolicy": @"ec2:uploadPolicy",
        @"uploadPolicySignature": @"ec2:uploadPolicySignature"
    }];
    return [keyPaths copy];
}

@end
