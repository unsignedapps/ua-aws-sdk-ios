//
//  UAEC2VolumeStatus.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2VolumeStatusInfo, UAEC2VolumeStatusEvent, UAEC2VolumeStatusAction;

@interface UAEC2VolumeStatus : UAEC2Model

@property (nonatomic, copy) NSString *volumeID;
@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic, copy) UAEC2VolumeStatusInfo *volumeStatus;
@property (nonatomic, copy) NSArray *events;
@property (nonatomic, copy) NSArray *actions;

@end
