//
//  UAEC2DescribeRouteTablesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2RouteTable;

@interface UAEC2DescribeRouteTablesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *routeTables;

/**
 * Retrieves the UAEC2RouteTable at the specified index.
**/
- (UAEC2RouteTable *)routeTableAtIndex:(NSUInteger)index;

@end
