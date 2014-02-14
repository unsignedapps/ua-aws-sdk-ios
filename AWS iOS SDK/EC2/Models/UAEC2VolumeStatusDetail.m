//
//  UAEC2VolumeStatusDetail.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2VolumeStatusDetail.h"

@implementation UAEC2VolumeStatusDetail

@synthesize name=_name, status=_status;

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
        @"name": @"ec2:name",
        @"status": @"ec2:status"
    }];
    return [keyPaths copy];
}

@end
