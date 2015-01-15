//
//  UADDBProjection.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBModel.h"

@interface UADDBProjection : UADDBModel

@property (nonatomic) UADDBProjectionType projectionType;
@property (nonatomic, strong) NSMutableArray *nonKeyAttributes;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)nonKeyAttributeAtIndex:(NSUInteger)index;

/**
 * Adds a NonKeyAttribute to the nonKeyAttributes property.
 *
 * This will initialise nonKeyAttributes with an empty mutable array if necessary.
**/
- (void)addNonKeyAttribute:(NSString *)nonKeyAttribute;

@end
