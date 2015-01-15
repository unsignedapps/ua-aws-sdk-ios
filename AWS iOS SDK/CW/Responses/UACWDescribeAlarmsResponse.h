//
//  UACWDescribeAlarmsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UACWResponse.h"

@class UACWMetricAlarm;

@interface UACWDescribeAlarmsResponse : UACWResponse

@property (nonatomic, copy) NSArray *metricAlarms;
@property (nonatomic, copy) NSString *nextToken;

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
