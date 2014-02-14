//
//  UACWDescribeAlarmsForMetricResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UACWResponse.h"

@class UACWMetricAlarm;

@interface UACWDescribeAlarmsForMetricResponse : UACWResponse

@property (nonatomic, copy) NSArray *metricAlarms;

@end
