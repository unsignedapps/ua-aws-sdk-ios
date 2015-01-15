//
//  UADDBKeyCondition.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBModel.h"

@interface UADDBKeyCondition : UADDBModel

@property (nonatomic, strong) NSMutableArray *attributeValueList;
@property (nonatomic) UADDBComparisonOperator comparisonOperator;

@end
