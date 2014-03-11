//
//  UAEC2DescribeVolumeStatusResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeVolumeStatusResponse.h"
#import "UAEC2VolumeStatus.h"

@implementation UAEC2DescribeVolumeStatusResponse

@synthesize volumeStatuses=_volumeStatuses, nextToken=_nextToken;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeVolumeStatusResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"volumeStatuses": @"ec2:volumeStatusSet/ec2:item",
        @"nextToken": @"ec2:nextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)volumeStatusesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2VolumeStatus class]];
}

@end
