//
//  UARDSOptionGroupOptionsMessage.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSOptionGroupOption;

@interface UARDSOptionGroupOptionsMessage : UARDSModel

@property (nonatomic, copy) NSArray *optionGroupOptions;
@property (nonatomic, copy) NSString *marker;

/**
 * Retrieves the UARDSOptionGroupOption at the specified index.
**/
- (UARDSOptionGroupOption *)optionGroupOptionAtIndex:(NSUInteger)index;

/**
 * Adds a OptionGroupOption to the optionGroupOptions property.
 *
 * This will initialise optionGroupOptions with an empty mutable array if necessary.
**/
- (void)addOptionGroupOption:(UARDSOptionGroupOption *)optionGroupOption;

@end
