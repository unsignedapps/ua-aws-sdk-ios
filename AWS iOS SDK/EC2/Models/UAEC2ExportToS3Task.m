//
//  UAEC2ExportToS3Task.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ExportToS3Task.h"

@implementation UAEC2ExportToS3Task

@synthesize diskImageFormat=_diskImageFormat, containerFormat=_containerFormat, s3Bucket=_s3Bucket, s3Key=_s3Key;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"diskImageFormat": @"DiskImageFormat",
        @"containerFormat": @"ContainerFormat",
        @"s3Bucket": @"S3Bucket",
        @"s3Key": @"S3Key"
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
        @"diskImageFormat": @"ec2:diskImageFormat",
        @"containerFormat": @"ec2:containerFormat",
        @"s3Bucket": @"ec2:s3Bucket",
        @"s3Key": @"ec2:s3Key"
    }];
    return [keyPaths copy];
}

- (void)setDiskImageFormat:(NSString *)diskImageFormat
{
	_diskImageFormat = diskImageFormat;
	
	if (![self.UA_dirtyProperties containsObject:@"diskImageFormat"])
		[self.UA_dirtyProperties addObject:@"diskImageFormat"];
}

- (void)setContainerFormat:(NSString *)containerFormat
{
	_containerFormat = containerFormat;
	
	if (![self.UA_dirtyProperties containsObject:@"containerFormat"])
		[self.UA_dirtyProperties addObject:@"containerFormat"];
}

- (void)setS3Bucket:(NSString *)s3Bucket
{
	_s3Bucket = s3Bucket;
	
	if (![self.UA_dirtyProperties containsObject:@"s3Bucket"])
		[self.UA_dirtyProperties addObject:@"s3Bucket"];
}

- (void)setS3Key:(NSString *)s3Key
{
	_s3Key = s3Key;
	
	if (![self.UA_dirtyProperties containsObject:@"s3Key"])
		[self.UA_dirtyProperties addObject:@"s3Key"];
}

@end
