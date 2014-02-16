//
//  UACWDescribeAlarmsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWResponse.h"

@class UACWMetricAlarm;

@interface UACWDescribeAlarmsResponse : UACWResponse

@property (nonatomic, copy) NSArray *metricAlarms;
@property (nonatomic, copy) NSString *nextToken;

@end
