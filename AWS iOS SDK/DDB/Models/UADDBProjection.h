//
//  UADDBProjection.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

@end
