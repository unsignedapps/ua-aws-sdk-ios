//
//  UARDSEventCategoriesMessage.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSEventCategoriesMapList;

@interface UARDSEventCategoriesMessage : UARDSModel

@property (nonatomic, copy) NSArray *eventCategoriesMapList;

/**
 * Retrieves the UARDSEventCategoriesMapList at the specified index.
**/
- (UARDSEventCategoriesMapList *)eventCategoriesMapListAtIndex:(NSUInteger)index;

/**
 * Adds a EventCategoriesMapList to the eventCategoriesMapList property.
 *
 * This will initialise eventCategoriesMapList with an empty mutable array if necessary.
**/
- (void)addEventCategoriesMapList:(UARDSEventCategoriesMapList *)eventCategoriesMapList;

@end
