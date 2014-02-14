//
//  UACWDataTypes.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License File.
//  Created by Rob Amos.
//
//

// UACWAlarmHistoryItemType
typedef NS_ENUM(NSUInteger, UACWAlarmHistoryItemType) {
	UACWAlarmHistoryItemTypeUnknown = 0,
	UACWAlarmHistoryItemTypeConfigurationUpdate = 1,
	UACWAlarmHistoryItemTypeStateUpdate = 2,
	UACWAlarmHistoryItemTypeAction = 3
};

// UACWAlarmState
typedef NS_ENUM(NSUInteger, UACWAlarmState) {
	UACWAlarmStateUnknown = 0,
	UACWAlarmStateOK = 1,
	UACWAlarmStateALARM = 2,
	UACWAlarmStateINSUFFICIENT_DATA = 3
};

// UACWStatistic
typedef NS_ENUM(NSUInteger, UACWStatistic) {
	UACWStatisticUnknown = 0,
	UACWStatisticSampleCount = 1,
	UACWStatisticAverage = 2,
	UACWStatisticSum = 3,
	UACWStatisticMinimum = 4,
	UACWStatisticMaximum = 5
};

// UACWUnit
typedef NS_ENUM(NSUInteger, UACWUnit) {
	UACWUnitUnknown = 0,
	UACWUnitNone = 1,
	UACWUnitSeconds = 2,
	UACWUnitMicroseconds = 3,
	UACWUnitMilliseconds = 4,
	UACWUnitBytes = 5,
	UACWUnitKilobytes = 6,
	UACWUnitMegabytes = 7,
	UACWUnitGigabytes = 8,
	UACWUnitTerabytes = 9,
	UACWUnitBits = 10,
	UACWUnitKilobits = 11,
	UACWUnitMegabits = 12,
	UACWUnitGigabits = 13,
	UACWUnitTerabits = 14,
	UACWUnitPercent = 15,
	UACWUnitCount = 16,
	UACWUnitBytesPerSecond = 17,
	UACWUnitKilobytesPerSecond = 18,
	UACWUnitMegabytesPerSecond = 19,
	UACWUnitGigabytesPerSecond = 20,
	UACWUnitTerabytesPerSecond = 21,
	UACWUnitBitsPerSecond = 22,
	UACWUnitKilobitsPerSecond = 23,
	UACWUnitMegabitsPerSecond = 24,
	UACWUnitGigabitsPerSecond = 25,
	UACWUnitTerabitsPerSecond = 26,
	UACWUnitCountPerSecond = 27
};

// UACWMetricAlarmComparisonOperator
typedef NS_ENUM(NSUInteger, UACWMetricAlarmComparisonOperator) {
	UACWMetricAlarmComparisonOperatorUnknown = 0,
	UACWMetricAlarmComparisonOperatorGreaterThanOrEqualToThreshold = 1,
	UACWMetricAlarmComparisonOperatorGreaterThanThreshold = 2,
	UACWMetricAlarmComparisonOperatorLessThanThreshold = 3,
	UACWMetricAlarmComparisonOperatorLessThanOrEqualToThreshold = 4
};