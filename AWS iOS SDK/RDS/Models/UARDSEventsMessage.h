//
//  UARDSEventsMessage.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSEvent;

@interface UARDSEventsMessage : UARDSModel

@property (nonatomic, copy) NSString *marker;
@property (nonatomic, copy) NSArray *events;

/**
 * Retrieves the UARDSEvent at the specified index.
**/
- (UARDSEvent *)eventAtIndex:(NSUInteger)index;

/**
 * Adds a Event to the events property.
 *
 * This will initialise events with an empty mutable array if necessary.
**/
- (void)addEvent:(UARDSEvent *)event;

@end
