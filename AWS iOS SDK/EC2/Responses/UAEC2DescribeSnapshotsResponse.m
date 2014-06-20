//
//  UAEC2DescribeSnapshotsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeSnapshotsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2Snapshot.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeSnapshotsResponse

@synthesize snapshots=_snapshots;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeSnapshotsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"snapshots": @"ec2:snapshotSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)snapshotsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Snapshot class]];
}

@end

#pragma clang diagnostic pop