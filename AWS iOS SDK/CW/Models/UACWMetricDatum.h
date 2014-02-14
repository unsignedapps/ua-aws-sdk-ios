//
//  UACWMetricDatum.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
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

@end
