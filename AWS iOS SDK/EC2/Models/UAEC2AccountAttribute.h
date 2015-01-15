//
//  UAEC2AccountAttribute.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2AccountAttribute : UAEC2Model

@property (nonatomic, copy) NSString *attributeName;
@property (nonatomic, copy) NSArray *attributeValues;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)attributeValueAtIndex:(NSUInteger)index;

/**
 * Adds a AttributeValue to the attributeValues property.
 *
 * This will initialise attributeValues with an empty mutable array if necessary.
**/
- (void)addAttributeValue:(NSString *)attributeValue;

@end
