//
//  UAEC2DescribePlacementGroupsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2PlacementGroup;

@interface UAEC2DescribePlacementGroupsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *placementGroups;

/**
 * Retrieves the UAEC2PlacementGroup at the specified index.
**/
- (UAEC2PlacementGroup *)placementGroupAtIndex:(NSUInteger)index;

@end
