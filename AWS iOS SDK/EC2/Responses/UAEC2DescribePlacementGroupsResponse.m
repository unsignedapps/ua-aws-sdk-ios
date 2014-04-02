//
//  UAEC2DescribePlacementGroupsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribePlacementGroupsResponse.h"
#import "UAEC2PlacementGroup.h"

@implementation UAEC2DescribePlacementGroupsResponse

@synthesize placementGroups=_placementGroups;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribePlacementGroupsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"placementGroups": @"ec2:placementGroupSet/ec2:item"
    }];
    return [keyPaths copy];
}

- (UAEC2PlacementGroup *)placementGroupAtIndex:(NSUInteger)index
{
    if (self.placementGroups == nil || index >= ([self.placementGroups count]-1))
        return nil;

    return [self.placementGroups objectAtIndex:index];
}

+ (NSValueTransformer *)placementGroupsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2PlacementGroup class]];
}

@end
