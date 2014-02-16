//
//  UAEC2VolumeStatusInfo.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2VolumeStatusInfo.h"
#import "UAEC2VolumeStatusDetail.h"

@implementation UAEC2VolumeStatusInfo

@synthesize status=_status, details=_details;

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
        @"status": @"ec2:status",
        @"details": @"ec2:details/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)detailsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2VolumeStatusDetail class]];
}

+ (NSValueTransformer *)detailsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2VolumeStatusDetail class]];
}

@end
