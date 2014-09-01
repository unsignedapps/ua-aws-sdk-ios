//
//  UADDBKeyCondition.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBModel.h"

@interface UADDBKeyCondition : UADDBModel

@property (nonatomic, strong) NSMutableArray *attributeValueList;
@property (nonatomic) UADDBComparisonOperator comparisonOperator;

/**
 * Retrieves the NSMutableDictionary at the specified index.
**/
- (NSMutableDictionary *)attributeValueListAtIndex:(NSUInteger)index;

/**
 * Adds a AttributeValueList to the attributeValueList property.
 *
 * This will initialise attributeValueList with an empty mutable array if necessary.
**/
- (void)addAttributeValueList:( *)attributeValueList;

@end
