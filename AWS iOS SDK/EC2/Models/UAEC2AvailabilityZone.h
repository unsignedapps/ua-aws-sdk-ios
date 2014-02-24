//
//  UAEC2AvailabilityZone.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2AvailabilityZoneMessage;

@interface UAEC2AvailabilityZone : UAEC2Model

@property (nonatomic, copy) NSString *zoneName;
@property (nonatomic) UAEC2AvailabilityZoneState state;
@property (nonatomic, copy) NSString *regionName;
@property (nonatomic, copy) NSArray *messages;

@end
