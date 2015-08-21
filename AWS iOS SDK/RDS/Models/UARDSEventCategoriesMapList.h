//
//  UARDSEventCategoriesMapList.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@interface UARDSEventCategoriesMapList : UARDSModel

@property (nonatomic) UARDSSourceType sourceType;
@property (nonatomic, copy) NSArray *eventCategories;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)eventCategoryAtIndex:(NSUInteger)index;

/**
 * Adds a EventCategory to the eventCategories property.
 *
 * This will initialise eventCategories with an empty mutable array if necessary.
**/
- (void)addEventCategory:(NSString *)eventCategory;

@end
