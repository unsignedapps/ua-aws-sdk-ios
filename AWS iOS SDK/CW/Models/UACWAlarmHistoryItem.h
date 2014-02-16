//
//  UACWAlarmHistoryItem.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWModel.h"

@interface UACWAlarmHistoryItem : UACWModel

@property (nonatomic, copy) NSString *alarmName;
@property (nonatomic, strong) NSDate *timestamp;
@property (nonatomic) UACWAlarmHistoryItemType historyItemType;
@property (nonatomic, copy) NSString *historySummary;
@property (nonatomic, copy) NSString *historyData;

@end
