//
//  UACWDescribeAlarmHistoryResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWResponse.h"

@class UACWAlarmHistoryItem;

@interface UACWDescribeAlarmHistoryResponse : UACWResponse

@property (nonatomic, copy) NSArray *alarmHistoryItems;
@property (nonatomic, copy) NSString *nextToken;

/**
 * Retrieves the UACWAlarmHistoryItem at the specified index.
**/
- (UACWAlarmHistoryItem *)alarmHistoryItemAtIndex:(NSUInteger)index;

/**
 * Adds a AlarmHistoryItem to the alarmHistoryItems property.
 *
 * This will initialise alarmHistoryItems with an empty mutable array if necessary.
**/
- (void)addAlarmHistoryItem:(UACWAlarmHistoryItem *)alarmHistoryItem;

@end
