//
//  UARDSOptionGroups.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSOptionGroupsList;

@interface UARDSOptionGroups : UARDSModel

@property (nonatomic, copy) NSArray *optionGroupsList;
@property (nonatomic, copy) NSString *marker;

/**
 * Retrieves the UARDSOptionGroupsList at the specified index.
**/
- (UARDSOptionGroupsList *)optionGroupsListAtIndex:(NSUInteger)index;

/**
 * Adds a OptionGroupsList to the optionGroupsList property.
 *
 * This will initialise optionGroupsList with an empty mutable array if necessary.
**/
- (void)addOptionGroupsList:(UARDSOptionGroupsList *)optionGroupsList;

@end
