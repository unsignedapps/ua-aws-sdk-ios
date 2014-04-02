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

@end
