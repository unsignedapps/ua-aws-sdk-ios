//
//  UAEC2DescribeRegionsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

- (UAEC2Region *)regionAtIndex:(NSUInteger)index
{
    if (self.regions == nil || index >= ([self.regions count]-1))
        return nil;

    return [self.regions objectAtIndex:index];
}

+ (NSValueTransformer *)regionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Region class]];
}

@end
