//
//  UAEC2RouteTableAssociation.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2RouteTableAssociation : UAEC2Model

@property (nonatomic, copy) NSString *routeTableAssociationID;
@property (nonatomic, copy) NSString *routeTableID;
@property (nonatomic, copy) NSString *subnetID;
@property (nonatomic) BOOL main;

@end
