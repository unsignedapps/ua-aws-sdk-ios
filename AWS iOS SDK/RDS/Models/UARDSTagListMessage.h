//
//  UARDSTagListMessage.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSTagList;

@interface UARDSTagListMessage : UARDSModel

@property (nonatomic, copy) NSArray *tagList;

/**
 * Retrieves the UARDSTagList at the specified index.
**/
- (UARDSTagList *)tagListAtIndex:(NSUInteger)index;

/**
 * Adds a TagList to the tagList property.
 *
 * This will initialise tagList with an empty mutable array if necessary.
**/
- (void)addTagList:(UARDSTagList *)tagList;

@end
