//
//  UAEC2CreateRouteTableResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2RouteTable;

@interface UAEC2CreateRouteTableResponse : UAEC2Response

@property (nonatomic, copy) UAEC2RouteTable *routeTable;

@end
