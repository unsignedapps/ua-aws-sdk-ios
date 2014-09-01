//
//  UADDBRequestItem.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBModel.h"

@interface UADDBRequestItem : UADDBModel

@property (nonatomic, strong) NSMutableArray *keys;
@property (nonatomic, strong) NSMutableArray *attributesToGet;
@property (nonatomic) BOOL consistentRead;

/**
 * Retrieves the NSMutableDictionary at the specified index.
**/
- (NSMutableDictionary *)keyAtIndex:(NSUInteger)index;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)attributeToGetAtIndex:(NSUInteger)index;

/**
 * Adds a AttributeToGet to the attributesToGet property.
 *
 * This will initialise attributesToGet with an empty mutable array if necessary.
**/
- (void)addAttributeToGet:(NSString *)attributeToGet;

@end
