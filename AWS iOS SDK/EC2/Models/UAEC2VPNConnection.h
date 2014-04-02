//
//  UAEC2VPNConnection.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2Tag, UAEC2VGWTelemetry, UAEC2Options, UAEC2VPNStaticRoute;

@interface UAEC2VPNConnection : UAEC2Model

@property (nonatomic, copy) NSString *vpnConnectionID;
@property (nonatomic, copy) NSString *state;
@property (nonatomic, copy) NSString *customerGatewayConfiguration;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *customerGatewayID;
@property (nonatomic, copy) NSString *vpnGatewayID;
@property (nonatomic, copy) NSArray *tags;
@property (nonatomic, copy) NSArray *vgwTelemetry;
@property (nonatomic, copy) UAEC2Options *options;
@property (nonatomic, copy) NSArray *routes;

/**
 * Retrieves the UAEC2Tag at the specified index.
**/
- (UAEC2Tag *)tagAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2VGWTelemetry at the specified index.
**/
- (UAEC2VGWTelemetry *)vgwTelemetryAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2VPNStaticRoute at the specified index.
**/
- (UAEC2VPNStaticRoute *)routeAtIndex:(NSUInteger)index;

@end
