//
//  UACWDescribeAlarmsForMetricResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWResponse.h"

@class UACWMetricAlarm;

@interface UACWDescribeAlarmsForMetricResponse : UACWResponse

@property (nonatomic, copy) NSArray *metricAlarms;

/**
 * Retrieves the UACWMetricAlarm at the specified index.
**/
- (UACWMetricAlarm *)metricAlarmAtIndex:(NSUInteger)index;

/**
 * Adds a MetricAlarm to the metricAlarms property.
 *
 * This will initialise metricAlarms with an empty mutable array if necessary.
**/
- (void)addMetricAlarm:(UACWMetricAlarm *)metricAlarm;

@end
