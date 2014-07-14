//
//  UAEC2DescribePlacementGroupsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribePlacementGroupsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2PlacementGroup.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribePlacementGroupsResponse

@synthesize placementGroups=_placementGroups;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(placementGroupAtIndex:) propertyName:@"placementGroups"];
	}
	return self;
}

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
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2PlacementGroup class]];
}

@end

#pragma clang diagnostic pop