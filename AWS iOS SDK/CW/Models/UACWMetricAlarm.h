//
//  UACWMetricAlarm.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
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

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)oKActionAtIndex:(NSUInteger)index;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)alarmActionAtIndex:(NSUInteger)index;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)insufficientDataActionAtIndex:(NSUInteger)index;

/**
 * Retrieves the UACWDimension at the specified index.
**/
- (UACWDimension *)dimensionAtIndex:(NSUInteger)index;

/**
 * Adds a OKAction to the oKActions property.
 *
 * This will initialise oKActions with an empty mutable array if necessary.
**/
- (void)addOKAction:(NSString *)oKAction;
/**
 * Adds a AlarmAction to the alarmActions property.
 *
 * This will initialise alarmActions with an empty mutable array if necessary.
**/
- (void)addAlarmAction:(NSString *)alarmAction;
/**
 * Adds a InsufficientDataAction to the insufficientDataActions property.
 *
 * This will initialise insufficientDataActions with an empty mutable array if necessary.
**/
- (void)addInsufficientDataAction:(NSString *)insufficientDataAction;
/**
 * Adds a Dimension to the dimensions property.
 *
 * This will initialise dimensions with an empty mutable array if necessary.
**/
- (void)addDimension:(UACWDimension *)dimension;

@end
