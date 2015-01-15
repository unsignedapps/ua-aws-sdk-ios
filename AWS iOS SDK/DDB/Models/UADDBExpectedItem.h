//
//  UADDBExpectedItem.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBModel.h"

@interface UADDBExpectedItem : UADDBModel

/**
 * Must be one of: NSString, NSNumber, NSData, a subclass thereof, or an NSArray of these options.
**/
@property (nonatomic, strong) id value;
@property (nonatomic) BOOL exists;
@property (nonatomic, copy) NSString *comparisonOperator;
@property (nonatomic, strong) NSMutableArray *attributeValueList;

@end
