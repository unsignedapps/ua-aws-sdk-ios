//
//  UAEC2S3Storage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2S3Storage.h"

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

- (void)setBucket:(NSString *)bucket
{
	_bucket = bucket;
	
	if (![self.UA_dirtyProperties containsObject:@"bucket"])
		[self.UA_dirtyProperties addObject:@"bucket"];
}

- (void)setPrefix:(NSString *)prefix
{
	_prefix = prefix;
	
	if (![self.UA_dirtyProperties containsObject:@"prefix"])
		[self.UA_dirtyProperties addObject:@"prefix"];
}

- (void)setAWSAccessKeyID:(NSString *)aWSAccessKeyID
{
	_aWSAccessKeyID = aWSAccessKeyID;
	
	if (![self.UA_dirtyProperties containsObject:@"aWSAccessKeyID"])
		[self.UA_dirtyProperties addObject:@"aWSAccessKeyID"];
}

- (void)setUploadPolicy:(NSString *)uploadPolicy
{
	_uploadPolicy = uploadPolicy;
	
	if (![self.UA_dirtyProperties containsObject:@"uploadPolicy"])
		[self.UA_dirtyProperties addObject:@"uploadPolicy"];
}

- (void)setUploadPolicySignature:(NSString *)uploadPolicySignature
{
	_uploadPolicySignature = uploadPolicySignature;
	
	if (![self.UA_dirtyProperties containsObject:@"uploadPolicySignature"])
		[self.UA_dirtyProperties addObject:@"uploadPolicySignature"];
}

@end
