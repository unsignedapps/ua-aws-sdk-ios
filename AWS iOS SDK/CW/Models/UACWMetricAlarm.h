//
//  UACWMetricAlarm.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWModel.h"

@class UACWDimension;

@interface UACWMetricAlarm : UACWModel

@property (nonatomic, copy) NSString *alarmName;
@property (nonatomic, copy) NSString *alarmARN;
@property (nonatomic, copy) NSString *alarmDescription;
@property (nonatomic, copy) NSString *alarmConfigurationUpdatedTimestamp;
@property (nonatomic) BOOL actionsEnabled;
@property (nonatomic, copy) NSArray *oKActions;
@property (nonatomic, copy) NSArray *alarmActions;
@property (nonatomic, copy) NSArray *insufficientDataActions;
@property (nonatomic) UACWAlarmState stateValue;
@property (nonatomic, copy) NSString *stateReason;
@property (nonatomic, copy) NSString *stateReasonData;
@property (nonatomic, copy) NSString *stateUpdatedTimestamp;
@property (nonatomic, copy) NSString *metricName;
@property (nonatomic, copy) NSString *namespace;
@property (nonatomic) UACWStatistic statistic;
@property (nonatomic, copy) NSArray *dimensions;
@property (nonatomic, strong) NSNumber *period;
@property (nonatomic) UACWUnit unit;
@property (nonatomic, strong) NSNumber *evaluationPeriods;
@property (nonatomic, strong) NSNumber *threshold;
@property (nonatomic) UACWMetricAlarmComparisonOperator comparisonOperator;

@end
