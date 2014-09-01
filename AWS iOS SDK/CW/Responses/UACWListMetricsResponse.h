//
//  UACWListMetricsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWResponse.h"

@class UACWMetric;

@interface UACWListMetricsResponse : UACWResponse

@property (nonatomic, copy) NSArray *metrics;
@property (nonatomic, copy) NSString *nextToken;

/**
 * Retrieves the UACWMetric at the specified index.
**/
- (UACWMetric *)metricAtIndex:(NSUInteger)index;

/**
 * Adds a Metric to the metrics property.
 *
 * This will initialise metrics with an empty mutable array if necessary.
**/
- (void)addMetric:(UACWMetric *)metric;

@end
