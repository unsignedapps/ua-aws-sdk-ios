//
//  UACWMetricDatum.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWModel.h"

@class UACWDimension, UACWStatisticSet;

@interface UACWMetricDatum : UACWModel

@property (nonatomic, copy) NSString *metricName;
@property (nonatomic, strong) NSMutableArray *dimensions;
@property (nonatomic, strong) NSDate *timestamp;
@property (nonatomic, strong) NSNumber *value;
@property (nonatomic, copy) UACWStatisticSet *statisticValues;
@property (nonatomic) UACWUnit unit;

/**
 * Retrieves the UACWDimension at the specified index.
**/
- (UACWDimension *)dimensionAtIndex:(NSUInteger)index;

@end
