//
//  UAEC2VolumeStatus.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
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

/**
 * Retrieves the UAEC2VolumeStatusEvent at the specified index.
**/
- (UAEC2VolumeStatusEvent *)eventAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2VolumeStatusAction at the specified index.
**/
- (UAEC2VolumeStatusAction *)actionAtIndex:(NSUInteger)index;

/**
 * Adds a Event to the events property.
 *
 * This will initialise events with an empty mutable array if necessary.
**/
- (void)addEvent:(UAEC2VolumeStatusEvent *)event;
/**
 * Adds a Action to the actions property.
 *
 * This will initialise actions with an empty mutable array if necessary.
**/
- (void)addAction:(UAEC2VolumeStatusAction *)action;

@end
