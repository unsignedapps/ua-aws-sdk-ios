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

/**
 * Retrieves the UAEC2AvailabilityZoneMessage at the specified index.
**/
- (UAEC2AvailabilityZoneMessage *)messageAtIndex:(NSUInteger)index;

/**
 * Adds a Message to the messages property.
 *
 * This will initialise messages with an empty mutable array if necessary.
**/
- (void)addMessage:(UAEC2AvailabilityZoneMessage *)message;

@end
