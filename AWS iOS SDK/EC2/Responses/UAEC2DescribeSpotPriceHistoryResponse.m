//
//  UAEC2DescribeSpotPriceHistoryResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeSpotPriceHistoryResponse.h"
#import "UAEC2SpotPriceHistory.h"

@implementation UAEC2DescribeSpotPriceHistoryResponse

@synthesize spotPriceHistory=_spotPriceHistory, nextToken=_nextToken;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeSpotPriceHistoryResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"spotPriceHistory": @"ec2:spotPriceHistorySet/ec2:item",
        @"nextToken": @"ec2:nextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)spotPriceHistoryXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2SpotPriceHistory class]];
}

@end
