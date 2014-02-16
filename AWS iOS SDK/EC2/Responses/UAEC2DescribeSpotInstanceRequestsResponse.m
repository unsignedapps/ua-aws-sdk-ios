//
//  UAEC2DescribeSpotInstanceRequestsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeSpotInstanceRequestsResponse.h"
#import "UAEC2SpotInstanceRequest.h"

@implementation UAEC2DescribeSpotInstanceRequestsResponse

@synthesize spotInstanceRequests=_spotInstanceRequests;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeSpotInstanceRequestsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"spotInstanceRequests": @"ec2:spotInstanceRequestSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)spotInstanceRequestsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2SpotInstanceRequest class]];
}

@end
