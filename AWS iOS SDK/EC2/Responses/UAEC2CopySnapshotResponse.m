//
//  UAEC2CopySnapshotResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CopySnapshotResponse.h"

@implementation UAEC2CopySnapshotResponse

@synthesize snapshotID=_snapshotID;

+ (NSString *)XPathPrefix
{
    return @"./ec2:CopySnapshotResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"snapshotID": @"ec2:snapshotId"
    }];
    return [keyPaths copy];
}

@end
