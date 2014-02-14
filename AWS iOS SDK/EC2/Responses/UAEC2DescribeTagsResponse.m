//
//  UAEC2DescribeTagsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeTagsResponse.h"
#import "UAEC2TagDescription.h"

@implementation UAEC2DescribeTagsResponse

@synthesize tags=_tags, nextToken=_nextToken;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeTagsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"tags": @"ec2:tagSet/ec2:item",
        @"nextToken": @"ec2:nextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2TagDescription class]];
}

@end
