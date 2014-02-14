//
//  UAEC2ExportToS3Task.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
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
        @"diskImageFormat": @"diskImageFormat",
        @"containerFormat": @"containerFormat",
        @"s3Bucket": @"s3Bucket",
        @"s3Key": @"s3Key"
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

@end
