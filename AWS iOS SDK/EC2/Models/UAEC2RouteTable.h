//
//  UAEC2RouteTable.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2Route, UAEC2RouteTableAssociation, UAEC2Tag, UAEC2PropagatingVGW;

@interface UAEC2RouteTable : UAEC2Model

@property (nonatomic, copy) NSString *routeTableID;
@property (nonatomic, copy) NSString *vpcID;
@property (nonatomic, copy) NSArray *routes;
@property (nonatomic, copy) NSArray *associations;
@property (nonatomic, copy) NSArray *tags;
@property (nonatomic, copy) NSArray *propagatingVGWs;

@end
