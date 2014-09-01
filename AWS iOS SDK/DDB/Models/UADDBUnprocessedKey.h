//
//  UADDBUnprocessedKey.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBModel.h"

@interface UADDBUnprocessedKey : UADDBModel

@property (nonatomic, copy) NSArray *keys;
@property (nonatomic, copy) NSArray *attributesToGet;
@property (nonatomic) BOOL consistentRead;

/**
 * Retrieves the NSDictionary at the specified index.
**/
- (NSDictionary *)keyAtIndex:(NSUInteger)index;

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
