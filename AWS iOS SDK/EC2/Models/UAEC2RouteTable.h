//
//  UAEC2RouteTable.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

/**
 * Retrieves the UAEC2Route at the specified index.
**/
- (UAEC2Route *)routeAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2RouteTableAssociation at the specified index.
**/
- (UAEC2RouteTableAssociation *)associationAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2Tag at the specified index.
**/
- (UAEC2Tag *)tagAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2PropagatingVGW at the specified index.
**/
- (UAEC2PropagatingVGW *)propagatingVGWAtIndex:(NSUInteger)index;

/**
 * Adds a Route to the routes property.
 *
 * This will initialise routes with an empty mutable array if necessary.
**/
- (void)addRoute:(UAEC2Route *)route;
/**
 * Adds a Association to the associations property.
 *
 * This will initialise associations with an empty mutable array if necessary.
**/
- (void)addAssociation:(UAEC2RouteTableAssociation *)association;
/**
 * Adds a Tag to the tags property.
 *
 * This will initialise tags with an empty mutable array if necessary.
**/
- (void)addTag:(UAEC2Tag *)tag;
/**
 * Adds a PropagatingVGW to the propagatingVGWs property.
 *
 * This will initialise propagatingVGWs with an empty mutable array if necessary.
**/
- (void)addPropagatingVGW:(UAEC2PropagatingVGW *)propagatingVGW;

@end
