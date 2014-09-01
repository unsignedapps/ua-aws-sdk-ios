//
//  UACWMetric.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWModel.h"

@class UACWDimension;

@interface UACWMetric : UACWModel

@property (nonatomic, copy) NSString *namespace;
@property (nonatomic, copy) NSString *metricName;
@property (nonatomic, copy) NSArray *dimensions;

/**
 * Retrieves the UACWDimension at the specified index.
**/
- (UACWDimension *)dimensionAtIndex:(NSUInteger)index;

/**
 * Adds a Dimension to the dimensions property.
 *
 * This will initialise dimensions with an empty mutable array if necessary.
**/
- (void)addDimension:(UACWDimension *)dimension;

@end
