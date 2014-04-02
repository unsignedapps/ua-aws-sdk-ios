//
//  UACWAlarmHistoryItem.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWAlarmHistoryItem.h"

@implementation UACWAlarmHistoryItem

@synthesize alarmName=_alarmName, timestamp=_timestamp, historyItemType=_historyItemType, historySummary=_historySummary, historyData=_historyData;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UACWModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"alarmName": @"cloudwatch:AlarmName",
        @"timestamp": @"cloudwatch:Timestamp",
        @"historyItemType": @"cloudwatch:HistoryItemType",
        @"historySummary": @"cloudwatch:HistorySummary",
        @"historyData": @"cloudwatch:HistoryData"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)timestampQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)historyItemTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UACWAlarmHistoryItemTypeConfigurationUpdate), @(UACWAlarmHistoryItemTypeStateUpdate), @(UACWAlarmHistoryItemTypeAction) ]
                                               stringValues:@[ @"ConfigurationUpdate", @"StateUpdate", @"Action" ]
                                               unknownValue:@(UACWAlarmHistoryItemTypeUnknown)];
}

+ (NSValueTransformer *)timestampXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)historyItemTypeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UACWAlarmHistoryItemTypeConfigurationUpdate), @(UACWAlarmHistoryItemTypeStateUpdate), @(UACWAlarmHistoryItemTypeAction) ]
                                               stringValues:@[ @"ConfigurationUpdate", @"StateUpdate", @"Action" ]
                                               unknownValue:@(UACWAlarmHistoryItemTypeUnknown)];
}

@end
