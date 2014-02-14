//
//  UACWMetric.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UACWModel.h"

@class UACWDimension;

@interface UACWMetric : UACWModel

@property (nonatomic, copy) NSString *namespace;
@property (nonatomic, copy) NSString *metricName;
@property (nonatomic, copy) NSArray *dimensions;

@end
