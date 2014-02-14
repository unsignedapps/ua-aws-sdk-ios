//
//  UAEC2VGWTelemetry.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2VGWTelemetry : UAEC2Model

@property (nonatomic, copy) NSString *outsideIPAddress;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSString *lastStatusChange;
@property (nonatomic, copy) NSString *statusMessage;
@property (nonatomic, strong) NSNumber *acceptedRouteCount;

@end
