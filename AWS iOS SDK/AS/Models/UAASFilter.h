//
//  UAASFilter.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASModel.h"

@interface UAASFilter : UAASModel

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSMutableArray *values;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)valueAtIndex:(NSUInteger)index;

/**
 * Adds a Value to the values property.
 *
 * This will initialise values with an empty mutable array if necessary.
**/
- (void)addValue:(NSString *)value;

@end
