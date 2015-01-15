//
//  UAEC2SpotDatafeedSubscription.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2Fault;

@interface UAEC2SpotDatafeedSubscription : UAEC2Model

@property (nonatomic, copy) NSString *ownerID;
@property (nonatomic, copy) NSString *bucket;
@property (nonatomic, copy) NSString *prefix;
@property (nonatomic, copy) NSString *state;
@property (nonatomic, copy) UAEC2Fault *fault;

@end
