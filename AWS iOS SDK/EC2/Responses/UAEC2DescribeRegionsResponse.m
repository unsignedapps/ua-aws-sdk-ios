//
//  UAEC2DescribeRegionsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeRegionsResponse.h"
#import "UAEC2Region.h"

@implementation UAEC2DescribeRegionsResponse

@synthesize regions=_regions;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeRegionsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"regions": @"ec2:regionInfo/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)regionsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2Region class]];
}

@end
