//
//  UAEC2ExportToS3TaskSpecification.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ExportToS3TaskSpecification.h"

@implementation UAEC2ExportToS3TaskSpecification

@synthesize diskImageFormat=_diskImageFormat, containerFormat=_containerFormat, s3Bucket=_s3Bucket, s3Prefix=_s3Prefix;

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
        @"s3Prefix": @"ec2:s3Prefix"
    }];
    return [keyPaths copy];
}

@end
