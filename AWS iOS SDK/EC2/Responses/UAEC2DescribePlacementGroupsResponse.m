//
//  UAEC2DescribePlacementGroupsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
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

+ (NSValueTransformer *)placementGroupsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2PlacementGroup class]];
}

@end
