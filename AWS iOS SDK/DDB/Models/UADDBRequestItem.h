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

@end
