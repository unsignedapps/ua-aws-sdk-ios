//
//  UAEC2CancelledSpotInstanceRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2CancelledSpotInstanceRequest : UAEC2Model

@property (nonatomic, copy) NSString *spotInstanceRequestID;
@property (nonatomic) UAEC2CancelledSpotInstanceRequestState state;

@end
